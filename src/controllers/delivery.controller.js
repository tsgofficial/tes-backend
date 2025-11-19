const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Users = db.users;
const Trucks = db.trucks;
const Drivers = db.drivers;
const Trailers = db.trailers;
const FuelTypes = db.fuel_types;
const Deliveries = db.deliveries;
const Containers = db.containers;
const LeaveStatus = db.leave_status;
const FuelLocations = db.fuel_locations;
const ManagerStatus = db.manager_status;
const DailyDeliveries = db.daily_deliveries;
const DeliveryDetails = db.delivery_details;
const FuelLocationDistances = db.fuel_location_distances;

const getDeliveries = catchAsync(async (req, res) => {
  const { startDate, endDate, is_received } = req.query;

  const deliveries = await Deliveries.findAll({
    include: [
      {
        model: Drivers,
        as: 'driver',
      },
      {
        model: Trucks,
        as: 'truck',
        attributes: ['id', 'license_plate'],
      },
      {
        model: Trailers,
        as: 'trailer',
        attributes: ['id', 'license_plate'],
      },
      {
        model: FuelLocations,
        as: 'fromLocation',
        attributes: ['id', 'name', 'latitude', 'longitude'],
      },
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        where: {
          ...(is_received && { density: { [db.Sequelize.Op.ne]: null } }),
          ...(startDate &&
            endDate && {
              received_at: {
                [db.Sequelize.Op.between]: [new Date(startDate), new Date(endDate)],
              },
            }),
        },
        include: [
          {
            model: FuelTypes,
            as: 'fuelType',
            attributes: ['id', 'name'],
          },
          {
            model: Containers,
            as: 'container',
            attributes: ['id', 'volume'],
          },
          {
            model: Users,
            as: 'received',
            attributes: ['id', 'firstname', 'lastname'],
          },
          {
            model: FuelLocations,
            as: 'toLocation',
            attributes: ['id', 'name'],
          },
          {
            model: FuelLocationDistances,
            as: 'toDistance',
            attributes: ['id', 'name', 'distance'],
          },
        ],
      },
    ],
    order: [['id', 'DESC']],
  });

  const formattedDeliveries = deliveries.map((delivery) => ({
    id: delivery.id,
    date: delivery.date,
    driver: delivery.driver,
    fromLocation: delivery.fromLocation,
    truck: {
      id: delivery.truck_id,
      licensePlate: delivery.truck?.license_plate || '',
      fuelDetails: delivery.deliveryDetails
        .filter((log) => log.truck_id === delivery.truck_id)
        .map((log) => ({
          id: log.id,
          density: log.density,
          fuelType: log.fuelType.name,
          fuelTypeId: log.fuelType.id,
          volume: log.container.volume,
          containerId: log.container.id,
          toLocation: log.toLocation,
          toDistance: log.toDistance,
          is_received: log.density !== null,
        })),
    },
    trailers: {
      id: delivery.trailer_id,
      licensePlate: delivery.trailer?.license_plate || '',
      fuelDetails: delivery.deliveryDetails
        .filter((log) => log.trailer_id === delivery.trailer_id)
        .map((log) => ({
          id: log.id,
          density: log.density,
          fuelType: log.fuelType.name,
          fuelTypeId: log.fuelType.id,
          volume: log.container.volume,
          containerId: log.container.id,
          toLocation: log.toLocation,
          toDistance: log.toDistance,
          is_received: log.density !== null,
        })),
    },
  }));

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: formattedDeliveries,
  });
});

const createDelivery = catchAsync(async (req, res) => {
  const { date, driverId, fromLocationId, toLocationId, truck, trailer } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !driverId || !fromLocationId || !toLocationId || !truckId) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const existingTruck = await Trucks.findByPk(truckId, { include: [{ model: Containers, as: 'containers' }] });

  const truckContainerIds = existingTruck?.containers.map((container) => container.id) ?? [];
  const givenContainerIds = fuelDetails?.map((detail) => detail.containerId) ?? [];

  const allValidContainers = givenContainerIds.every((id) => truckContainerIds.includes(id));
  if (!allValidContainers) {
    return res.status(400).send({
      success: false,
      message: 'One or more container IDs are invalid for the selected truck',
    });
  }

  const existingTrailer = await Trailers.findByPk(trailer?.id, {
    include: [{ model: Containers, as: 'containers' }],
  });

  if (existingTrailer) {
    const trailerContainerIds = existingTrailer?.containers.map((container) => container.id) ?? [];
    const givenTrailerContainerIds = trailer.fuelDetails?.map((detail) => detail.containerId) ?? [];

    const allValidTrailerContainers = givenTrailerContainerIds.every((id) => trailerContainerIds.includes(id));

    if (!allValidTrailerContainers) {
      return res.status(400).send({
        success: false,
        message: 'One or more container IDs are invalid for the selected trailer',
      });
    }
  }

  const delivery = await Deliveries.create({
    date,
    truck_id: truck.id,
    trailer_id: trailer ? trailer.id : null,
    driver_id: driverId,
    from_location_id: fromLocationId,
    to_location_id: toLocationId,
  });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: delivery.id,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailer) {
    const trailerLogPromises = trailer.fuelDetails.map((fuelDetail) =>
      DeliveryDetails.create({
        delivery_id: delivery.id,
        trailer_id: trailer.id,
        fuel_type_id: fuelDetail.fuelTypeId,
        container_id: fuelDetail.containerId,
      })
    );
    await Promise.all(trailerLogPromises);
  }

  res.send({
    success: true,
    message: 'Delivery created successfully',
    data: delivery,
  });
});

const editDelivery = catchAsync(async (req, res) => {
  const { id: deliveryId } = req.params;

  const { date, driverId, truck, trailer } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !driverId || !truckId) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const existingTruck = await Trucks.findByPk(truckId, { include: [{ model: Containers, as: 'containers' }] });

  const truckContainerIds = existingTruck.containers.map((container) => container.id);
  const givenContainerIds = fuelDetails?.map((detail) => detail.containerId) ?? [];

  const allValidContainers = givenContainerIds.every((id) => truckContainerIds.includes(id));
  if (!allValidContainers) {
    return res.status(400).send({
      success: false,
      message: 'One or more container IDs are invalid for the selected truck',
    });
  }

  if (trailer) {
    const existingTrailers = await Trailers.findByPk(trailer.id, { include: [{ model: Containers, as: 'containers' }] });

    const trailerContainerIds = existingTrailers.containers.map((container) => container.id);
    const givenTrailerContainerIds = trailer.fuelDetails?.map((detail) => detail.containerId) ?? [];

    const allValidTrailerContainers = givenTrailerContainerIds.every((id) => trailerContainerIds.includes(id));
    if (!allValidTrailerContainers) {
      return res.status(400).send({
        success: false,
        message: 'One or more container IDs are invalid for the selected trailer',
      });
    }
  }

  const delivery = await Deliveries.findByPk(deliveryId);
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  delivery.date = date;
  delivery.driver_id = driverId;
  delivery.truck_id = truckId;
  delivery.trailer_id = trailer ? trailer.id : null;
  await delivery.save();

  await DeliveryDetails.destroy({ where: { delivery_id: deliveryId } });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: deliveryId,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailer) {
    const trailerLogPromises = trailer.fuelDetails.map((fuelDetail) =>
      DeliveryDetails.create({
        delivery_id: deliveryId,
        trailer_id: trailer.id,
        fuel_type_id: fuelDetail.fuelTypeId,
        container_id: fuelDetail.containerId,
      })
    );
    await Promise.all(trailerLogPromises);
  }

  res.send({
    success: true,
    message: 'Delivery updated successfully',
    data: delivery,
  });
});

const deleteDelivery = catchAsync(async (req, res) => {
  const { id } = req.params;

  const delivery = await Deliveries.findByPk(id);
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  await DeliveryDetails.destroy({ where: { delivery_id: id } });
  await delivery.destroy();

  res.send({
    success: true,
    message: 'Delivery deleted successfully',
  });
});

const receiveDelivery = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { userId } = req;

  const { outboundDistanceId, returnDistanceId, densityDetails } = req.body;

  if (!densityDetails || densityDetails.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Density details are required',
    });
  }

  const delivery = await Deliveries.findByPk(id, {
    include: [{ model: DeliveryDetails, as: 'deliveryDetails' }],
  });
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  const deliveryDetailsIds = delivery.deliveryDetails.map((detail) => detail.id);
  const givenDetailIds = densityDetails.map((d) => d.detailId);

  const allValidDetails = givenDetailIds.every((detailId) => deliveryDetailsIds.includes(detailId));
  if (deliveryDetailsIds.length !== givenDetailIds.length || !allValidDetails) {
    return res.status(400).send({
      success: false,
      message: 'One or more delivery detail IDs are invalid for this delivery',
    });
  }

  delivery.is_received = 1;

  if (!delivery.received_by) {
    delivery.received_by = userId ?? null;
  }
  if (!delivery.received_datetime) {
    delivery.received_datetime = new Date();
  }
  if (outboundDistanceId) {
    delivery.outbound_distance_id = outboundDistanceId;
  }
  if (returnDistanceId) {
    delivery.return_distance_id = returnDistanceId;
  }

  const densityValues = densityDetails.map((d) => d.density);
  if (densityValues.some((d) => !d || d <= 0 || d > 1)) {
    return res.status(400).send({
      success: false,
      message: 'Density values must be greater between 0 and 1',
    });
  }

  const densityUpdatePromises = densityDetails
    .filter((densityDetail) => densityDetail && densityDetail.detailId) // Filter out invalid entries
    .map((densityDetail) => {
      const { detailId, density } = densityDetail;
      return DeliveryDetails.update(
        { density },
        {
          where: { id: detailId },
        }
      );
    });

  if (densityUpdatePromises.length > 0) {
    await Promise.all(densityUpdatePromises);
  }

  if (delivery.changed() !== false) {
    await delivery.save();
  }

  res.send({
    success: true,
    message: 'Delivery received',
    data: delivery,
  });
});

const getDateDeliveries = catchAsync(async (req, res) => {
  const { role } = req;
  const { date } = req.params;

  const deliveriesResult = await Deliveries.findAll({
    include: [
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        include: [
          {
            model: FuelLocations,
            as: 'toLocation',
          },
          {
            model: Containers,
            as: 'container',
          },
          {
            model: FuelTypes,
            as: 'fuelType',
          },
          {
            model: Users,
            as: 'receiver',
          },
        ],
      },
      {
        model: DailyDeliveries,
        as: 'dailyDelivery',
        where: { date },
        include: [
          {
            model: Trucks,
            as: 'truck',
          },
          {
            model: LeaveStatus,
            as: 'leaveStatus',
          },
        ],
      },
      {
        model: Drivers,
        as: 'driver',
      },
      {
        model: Trailers,
        as: 'trailer',
      },
      {
        model: FuelLocations,
        as: 'fromLocation',
      },
      {
        model: ManagerStatus,
        as: 'managerStatus',
      },
    ],
  });

  const deliveries = deliveriesResult.map((dt) => dt.get({ plain: true }));

  const result = deliveries.map((delivery) => ({
    id: delivery.id,
    truck: delivery.dailyDelivery.truck,
    driver: delivery.driver,
    trailer: delivery.trailer,
    admin_status: delivery.dailyDelivery?.admin_status,
    manager_status: delivery.managerStatus?.name,
    leave_status: delivery.dailyDelivery?.leaveStatus.name,
    fromLocation: delivery.fromLocation,
    toLocations: delivery.deliveryDetails?.map((dd) => dd.toLocation),
    deliveryDetails: delivery.deliveryDetails?.map((dd) => ({
      detail_id: dd.id,
      container_id: dd.container_id,
      volume: dd.container?.volume,
      fuel_type_id: dd.fuel_type_id,
      fuel_type_name: dd.fuelType?.name,
      density: dd.density,
      is_received: dd.density !== null,
      receiver: dd.receiver ? `${dd.receiver.firstname} ${dd.receiver.lastname}` : null,
    })),
  }));

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: result,
  });
});

const postDailyDeliveryTrucks = catchAsync(async (req, res) => {
  const { date, truckIds } = req.body;

  if (!date || !truckIds) {
    return res.status(400).send({
      success: false,
      message: 'date and truckIds are required',
    });
  }

  const existingDeliveries = await DailyDeliveries.findAll({
    where: { date },
  });

  const existingTruckIds = existingDeliveries.map((delivery) => delivery.truck_id);

  const newTruckIds = truckIds.filter((truck_id) => !existingTruckIds.includes(truck_id));

  if (newTruckIds.length === 0) {
    return res.send({
      success: true,
      message: 'No new trucks to add for the specified date',
      data: [],
    });
  }

  const dailyTruck = await DailyDeliveries.bulkCreate(
    truckIds.map((truck_id) => ({
      date,
      truck_id,
    }))
  );

  res.send({
    success: true,
    message: 'Daily trucks saved successfully',
    data: dailyTruck,
  });
});

module.exports = {
  getDeliveries,
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
  postDailyDeliveryTrucks,
};
