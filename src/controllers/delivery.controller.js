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
const TruckStatus = db.truck_status;
const FuelLocations = db.fuel_locations;
const ManagerStatus = db.manager_status;
const DailyDeliveries = db.daily_deliveries;
const DeliveryDetails = db.delivery_details;
const InspectorStatus = db.inspector_status;

const getDateDeliveries = catchAsync(async (req, res) => {
  const { role } = req;
  const { date } = req.params;

  if (!date) {
    return res.status(400).send({
      success: false,
      message: 'Date parameter is required',
    });
  }

  const deliveriesResult = await DailyDeliveries.findAll({
    where: { date },
    include: [
      {
        model: Trucks,
        as: 'truck',
        include: [
          {
            model: TruckStatus,
            as: 'status',
          },
          {
            model: Trailers,
            as: 'trailer',
          },
          {
            model: Drivers,
            as: 'driver',
          },
        ],
      },
      {
        model: LeaveStatus,
        as: 'leaveStatus',
      },
      {
        model: Deliveries,
        as: 'deliveries',
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
              {
                model: InspectorStatus,
                as: 'inspectorStatus',
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
      },
    ],
  });

  const deliveries = deliveriesResult.map((dt) => dt.get({ plain: true }));

  const result = deliveries.map((delivery) => ({
    daily_delivery_id: delivery.id,
    truck: {
      id: delivery.truck.id,
      license_plate: delivery.truck.license_plate,
      status: delivery.truck?.status?.name,
      status_id: delivery.truck?.status_id,
    },
    trailer: delivery.truck?.trailer,
    driver: delivery.truck?.driver,
    leave_status: delivery.leaveStatus.name,
    leave_status_id: delivery.leave_status_id,
    manager_status: delivery.managerStatus?.name,
    manager_status_id: delivery.manager_status_id,
    deliveries: delivery.deliveries?.map((del) => ({
      id: del.id,
      date: del.date,

      driver: del.driver,
      trailer: del.trailer,

      from_location: del.fromLocation,

      location_details: del.deliveryDetails
        ?.map((dd) => ({
          location_id: dd.to_location_id,
          location: dd.toLocation,
          inspector_status: dd.inspectorStatus?.name,
          inspector_status_id: dd.inspector_status_id,
          received_at: dd.received_at,
          receiver: dd.receiver,
        }))
        .filter(
          (locationDetail, index, self) => index === self.findIndex((l) => l.location_id === locationDetail.location_id)
        ),
    })),
  }));

  let otherTrucksData = [];

  if (role !== 'manager') {
    const otherTrucks = await Trucks.findAll({
      where: {
        id: {
          [db.Sequelize.Op.notIn]: deliveries.map((d) => d.truck.id),
        },
      },
      include: [
        {
          model: TruckStatus,
          as: 'status',
        },
        {
          model: Trailers,
          as: 'trailer',
        },
        {
          model: Drivers,
          as: 'driver',
        },
      ],
    });

    otherTrucksData = otherTrucks.map((truck) => ({
      truck: {
        id: truck.id,
        license_plate: truck.license_plate,
        status: truck.status?.name,
        status_id: truck.status_id,
      },
      trailer: truck.trailer,
      driver: truck.driver,
      deliveries: [],
    }));
  }

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: [...result, ...otherTrucksData],
  });
});

const createDelivery = catchAsync(async (req, res) => {
  const { driverId, dailyDeliveryId, fromLocationId, trailer, truck } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!dailyDeliveryId || !fromLocationId || !truckId || !driverId) {
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
    driver_id: driverId,
    trailer_id: trailer ? trailer.id : null,
    daily_delivery_id: dailyDeliveryId,
    from_location_id: fromLocationId,
  });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: delivery.id,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
      to_location_id: fuelDetail.toLocationId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailer?.fuelDetails && trailer.fuelDetails.length > 0) {
    const trailerLogPromises = trailer.fuelDetails.map((fuelDetail) =>
      DeliveryDetails.create({
        delivery_id: delivery.id,
        trailer_id: trailer.id,
        fuel_type_id: fuelDetail.fuelTypeId,
        container_id: fuelDetail.containerId,
        to_location_id: fuelDetail.toLocationId,
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

  const { driverId, truck, trailer, fromLocationId } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!driverId || !truckId || !fromLocationId) {
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

  const existingTrailers = await Trailers.findByPk(trailer.id, { include: [{ model: Containers, as: 'containers' }] });

  if (existingTrailers) {
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

  delivery.driver_id = driverId;
  delivery.trailer_id = trailer ? trailer.id : null;
  delivery.from_location_id = fromLocationId;
  await delivery.save({ fields: ['driver_id', 'trailer_id', 'from_location_id'] });

  await DeliveryDetails.destroy({ where: { delivery_id: deliveryId } });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: deliveryId,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
      to_location_id: fuelDetail.toLocationId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailer?.fuelDetails && trailer.fuelDetails.length > 0) {
    const trailerLogPromises = trailer.fuelDetails.map((fuelDetail) =>
      DeliveryDetails.create({
        delivery_id: deliveryId,
        trailer_id: trailer.id,
        fuel_type_id: fuelDetail.fuelTypeId,
        container_id: fuelDetail.containerId,
        to_location_id: fuelDetail.toLocationId,
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
  const { id: userId } = req.user;

  const { fromDistanceId, toDistanceId, densityDetails } = req.body;

  if (!fromDistanceId || !densityDetails || densityDetails.length === 0) {
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
  if (toDistanceId) {
    delivery.to_distance_id = toDistanceId;
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
        { density, from_distance_id: fromDistanceId, received_by: userId, received_at: new Date() },
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

module.exports = {
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
};
