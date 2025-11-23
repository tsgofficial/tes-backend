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
const DeliveryLocations = db.delivery_locations;

const getDateDeliveries = catchAsync(async (req, res) => {
  const { role } = req.user;
  const { date } = req.query;

  if (!date) {
    return res.status(400).send({
      success: false,
      message: 'Date parameter is required',
    });
  }

  const isInspector = role === 'inspector';

  const trucksResult = await Trucks.findAll({
    include: [
      {
        model: TruckStatus,
        as: 'status',
        where: { id: 1 },
      },
      {
        model: Trailers,
        as: 'trailer',
      },
      {
        model: Drivers,
        as: 'driver',
      },
      {
        model: DailyDeliveries,
        as: 'dailyDeliveries',
        where: { date },
        required: false,
        include: [
          {
            model: LeaveStatus,
            as: 'leaveStatus',
          },
        ],
      },
      {
        model: Deliveries,
        as: 'deliveries',
        where: { date },
        required: isInspector,
        include: [
          {
            model: DeliveryLocations,
            as: 'deliveryLocations',
            where: isInspector ? { location_id: req.user.location_id } : {},
            required: isInspector,
            include: [{ model: FuelLocations, as: 'location' }],
          },
          {
            model: DeliveryDetails,
            as: 'deliveryDetails',
            include: [
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
                include: [{ model: FuelLocations, as: 'location' }],
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

  const trucks = trucksResult.map((dt) => dt.get({ plain: true }));

  const result = trucks.map((truck) => ({
    truck: {
      id: truck.id,
      license_plate: truck.license_plate,
      status: truck?.status?.name,
      status_id: truck?.status_id,
    },

    trailer: truck?.trailer,
    driver: truck?.driver,

    leave_status: truck.dailyDeliveries?.[0]?.leaveStatus?.name ?? 'Хугацаа тодорхойгүй',
    leave_status_id: truck.dailyDeliveries?.[0]?.leave_status_id ?? 13,

    deliveries: truck.deliveries?.map((del) => ({
      id: del.id,
      date: del.date,

      driver: del.driver,
      trailer: del.trailer,

      manager_status: del.managerStatus?.name,
      manager_status_id: del.manager_status_id,

      from_location: del.fromLocation,

      location_details: del.deliveryLocations?.map((dl) => {
        const dd = del.deliveryDetails.find((detail) => detail.receiver?.location_id === dl.location_id) ?? {};

        return {
          inspector_status: dd.inspectorStatus?.name ?? 'Хүлээгдэж байна',
          inspector_status_id: dd.inspector_status_id ?? 1,
          received_at: dd.received_at,
          receiver: {
            id: dd.receiver?.id,
            firstname: dd.receiver?.firstname,
            lastname: dd.receiver?.lastname,
          },
          location: {
            id: dl.location?.id,
            name: dl.location?.name,
          },
        };
      }),
    })),
  }));

  let otherTrucksData = [];

  if (role === 'admin' || role === 'viewer') {
    const otherTrucks = await Trucks.findAll({
      where: {
        id: {
          [db.Sequelize.Op.notIn]: trucks.map((t) => t.id),
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

  const totalResult = [...result, ...otherTrucksData];

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: {
      result: totalResult,
      count: totalResult.length,
    },
  });
});

const createDelivery = catchAsync(async (req, res) => {
  const { date, driverId, fromLocationId, trailer, truck, toLocationIds } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !fromLocationId || !truckId || !driverId || !toLocationIds || toLocationIds.length === 0) {
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
    truck_id: truckId,
    driver_id: driverId,
    trailer_id: trailer ? trailer.id : null,
    from_location_id: fromLocationId,
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

  if (trailer?.fuelDetails && trailer.fuelDetails.length > 0) {
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

  await DeliveryLocations.bulkCreate(
    toLocationIds.map((locationId) => ({
      delivery_id: delivery.id,
      location_id: locationId,
    }))
  );

  res.send({
    success: true,
    message: 'Delivery created successfully',
    data: delivery,
  });
});

const editDelivery = catchAsync(async (req, res) => {
  const { id: deliveryId } = req.params;

  const { date, driverId, truck, trailer, fromLocationId, toLocationIds } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !driverId || !truckId || !fromLocationId || !toLocationIds || toLocationIds.length === 0) {
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

  delivery.date = date;
  delivery.truck_id = truckId;
  delivery.driver_id = driverId;
  delivery.trailer_id = trailer ? trailer.id : null;
  delivery.from_location_id = fromLocationId;

  await delivery.save({ fields: ['date', 'truck_id', 'driver_id', 'trailer_id', 'from_location_id'] });

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

  if (trailer?.fuelDetails && trailer.fuelDetails.length > 0) {
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

  await DeliveryLocations.destroy({ where: { delivery_id: deliveryId } });
  await DeliveryLocations.bulkCreate(
    toLocationIds.map((locationId) => ({
      delivery_id: deliveryId,
      location_id: locationId,
    }))
  );

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
  await DeliveryLocations.destroy({ where: { delivery_id: id } });
  await delivery.destroy();

  res.send({
    success: true,
    message: 'Delivery deleted successfully',
  });
});

const receiveDelivery = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { id: userId } = req.user;

  const { fromDistanceId, toDistanceId, densityDetails, inspector_status_id } = req.body;

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
        {
          density,
          from_distance_id: fromDistanceId,
          received_by: userId,
          received_at: new Date(),
          inspector_status_id: inspector_status_id ?? 2,
        },
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

const getDeliveryDetails = catchAsync(async (req, res) => {
  const { id } = req.params;

  const deliveryResult = await Deliveries.findByPk(id, {
    include: [
      {
        model: DeliveryLocations,
        as: 'deliveryLocations',
      },
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        include: [
          {
            model: FuelTypes,
            as: 'fuelType',
          },
          {
            model: Containers,
            as: 'container',
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
    ],
  });

  if (!deliveryResult) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  const delivery = deliveryResult.get({ plain: true });

  const result = {
    id: delivery.id,
    driver_id: delivery.driver_id,
    trailer_id: delivery.trailer_id,
    from_location_id: delivery.from_location_id,
    manager_status_id: delivery.manager_status_id,
    is_received: delivery.is_received,
    received_by: delivery.received_by,
    received_datetime: delivery.received_datetime,
    delivery_locations: delivery.deliveryLocations.map((loc) => loc.location_id),
    truck: {
      id: delivery.truck_id,
      details: delivery.deliveryDetails
        .filter((detail) => detail.truck_id)
        .map((detail) => ({
          id: detail.id,
          fuel_type: detail.fuelType,
          container: detail.container,
          density: detail.density,
          inspector_status: detail.inspectorStatus,
          inspector_status_id: detail.inspector_status_id,
          received_at: detail.received_at,
          receiver: detail.receiver,
        })),
    },
    trailer: delivery.trailer_id
      ? {
          id: delivery.trailer_id,
          details: delivery.deliveryDetails
            .filter((detail) => detail.trailer_id)
            .map((detail) => ({
              id: detail.id,
              fuel_type: detail.fuelType,
              container: detail.container,
              density: detail.density,
              inspector_status: detail.inspectorStatus,
              inspector_status_id: detail.inspector_status_id,
              received_at: detail.received_at,
              receiver: detail.receiver,
            })),
        }
      : null,
  };

  res.send({
    success: true,
    message: 'Fetched delivery details successfully',
    data: result,
  });
});

module.exports = {
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
  getDeliveryDetails,
};
