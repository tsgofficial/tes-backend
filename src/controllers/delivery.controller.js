const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Volumes = db.volumes;
const FuelLogs = db.fuel_logs;
const FuelTypes = db.fuel_types;
const Deliveries = db.deliveries;

const getDeliveries = catchAsync(async (req, res) => {
  const deliveries = await Deliveries.findAll({
    include: [
      {
        model: FuelLogs,
        as: 'fuelLogs',
        include: [
          {
            model: FuelTypes,
            as: 'fuelType',
            attributes: ['id', 'name'],
          },
          {
            model: Volumes,
            as: 'volume',
            attributes: ['id', 'value'],
          },
        ],
      },
    ],
  });

  const formattedDeliveries = deliveries.map((delivery) => ({
    id: delivery.id,
    truckId: delivery.truck_id,
    driverId: delivery.driver_id,
    locationId: delivery.location_id,
    startedAt: delivery.started_at,
    fuelLogs: delivery.fuelLogs.map((log) => ({
      id: log.id,
      fuelType: log.fuelType.name,
      fuelTypeId: log.fuelType.id,
      volume: log.volume.value,
      volumeId: log.volume.id,
      deliveryType: log.delivery_type,
    })),
  }));

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: formattedDeliveries,
  });
});

const createDelivery = catchAsync(async (req, res) => {
  const { type, truckId, driverId, locationId, fuelContainers } = req.body;

  if (!type || !truckId || !driverId || !locationId || fuelContainers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const delivery = await Deliveries.create({
    truck_id: truckId,
    driver_id: driverId,
    location_id: locationId,
    started_at: new Date(),
  });

  const fuelLogPromises = fuelContainers.map((container) =>
    FuelLogs.create({
      delivery_id: delivery.id,
      fuel_type_id: container.fuelTypeId,
      volume_id: container.volumeId,
      delivery_type: type,
    })
  );
  await Promise.all(fuelLogPromises);

  res.send({
    success: true,
    message: 'Delivery created successfully',
    data: delivery,
  });
});

const editDelivery = catchAsync(async (req, res) => {
  const { id } = req.params;

  const { type, truckId, driverId, locationId, fuelContainers } = req.body;
  if (!type || !truckId || !driverId || !locationId || fuelContainers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const delivery = await Deliveries.findByPk(id);
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  await delivery.update({
    truck_id: truckId,
    driver_id: driverId,
    location_id: locationId,
  });

  await FuelLogs.destroy({ where: { delivery_id: id } });

  const fuelLogPromises = fuelContainers.map((container) =>
    FuelLogs.create({
      delivery_id: delivery.id,
      fuel_type_id: container.fuelTypeId,
      volume_id: container.volumeId,
      delivery_type: type,
    })
  );
  await Promise.all(fuelLogPromises);

  res.send({
    success: true,
    message: 'Delivery updated successfully',
  });
});

module.exports = { getDeliveries, createDelivery, editDelivery };
