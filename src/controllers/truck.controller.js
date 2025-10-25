const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;
const Volumes = db.volumes;
const Containers = db.containers;

const truckRegExp = /^\d{4}[А-Яа-яӨөҮү]{3}$/;
const trailerRegExp = /^\d{4}[А-Яа-яӨөҮү]{2}$/;

const getTrucks = catchAsync(async (req, res) => {
  const { type } = req.query;
  const trucks = await Trucks.findAll({
    where: type ? { type } : {},
    include: [
      {
        model: Trucks,
        as: 'attachedTrailer',
        attributes: ['id', 'license_plate'],
      },
      {
        attributes: ['id'],
        model: Containers,
        as: 'truckContainers',
        include: [
          {
            model: Volumes,
            as: 'containerVolume',
            attributes: ['id', 'value'],
          },
        ],
      },
    ],
    order: [['id', 'DESC']],
  });

  const formattedTrucks = trucks.map((truck) => {
    const containers = truck.truckContainers
      .map((container) => ({
        id: container.id,
        volumeId: container.containerVolume?.id,
        volume: container.containerVolume?.value,
      }))
      .filter((c) => c.id && c.volumeId && c.volume);
    return {
      id: truck.id,
      type: truck.type,
      license_plate: truck.license_plate,
      lastBatteryChangedAt: truck.last_battery_changed_at,
      lastInspectedAt: truck.last_inspected_at,
      trailer: truck.attachedTrailer,
      containers,
    };
  });

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: formattedTrucks,
  });
});

const createTruck = catchAsync(async (req, res) => {
  const { type, licensePlate, lastBatteryChangedAt, lastInspectedAt, containers } = req.body;

  if (type !== 'truck' && type !== 'trailer') {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck data',
    });
  }

  if (!containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid containers data',
    });
  }

  if (type === 'truck' && !truckRegExp.test(licensePlate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck license plate format',
    });
  }

  if (type === 'trailer' && !trailerRegExp.test(licensePlate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid trailer license plate format',
    });
  }

  const existingTruck = await Trucks.findOne({ where: { license_plate: licensePlate } });
  if (existingTruck) {
    return res.status(400).send({
      success: false,
      message: 'Truck with this license plate already exists',
    });
  }

  const truck = await Trucks.create({
    type,
    license_plate: licensePlate,
    last_battery_changed_at: lastBatteryChangedAt,
    last_inspected_at: lastInspectedAt,
  });

  const containerPromises = containers.map((container) =>
    Containers.create({
      truck_id: truck.id,
      volume_id: container.volumeId,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Truck created successfully',
    data: truck,
  });
});

const editTruck = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { type, licensePlate, lastBatteryChangedAt, lastInspectedAt, containers } = req.body;

  if (type !== 'truck' && type !== 'trailer') {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck data',
    });
  }

  if (!containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid containers data',
    });
  }

  if (type === 'truck' && !truckRegExp.test(licensePlate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck license plate format',
    });
  }

  if (type === 'trailer' && !trailerRegExp.test(licensePlate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid trailer license plate format',
    });
  }

  const truck = await Trucks.findByPk(id);
  if (!truck) {
    return res.status(404).send({
      success: false,
      message: 'Truck not found',
    });
  }

  const existingTruck = await Trucks.findOne({ where: { license_plate: licensePlate, id: { [db.Sequelize.ne]: id } } });
  if (existingTruck) {
    return res.status(400).send({
      success: false,
      message: 'Truck with this license plate already exists',
    });
  }

  truck.type = type;
  truck.license_plate = licensePlate;
  truck.last_battery_changed_at = lastBatteryChangedAt;
  truck.last_inspected_at = lastInspectedAt;
  await truck.save();

  await Containers.destroy({ where: { truck_id: id } });
  const containerPromises = containers.map((container) =>
    Containers.create({
      truck_id: id,
      volume_id: container.volumeId,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Truck updated successfully',
    data: truck,
  });
});

const deleteTruck = catchAsync(async (req, res) => {
  const { id } = req.params;

  const truck = await Trucks.findByPk(id);
  if (!truck) {
    return res.status(404).send({
      success: false,
      message: 'Truck not found',
    });
  }

  await Containers.destroy({ where: { truck_id: id } });
  await truck.destroy();

  res.send({
    success: true,
    message: 'Truck deleted successfully',
  });
});

module.exports = { getTrucks, createTruck, editTruck, deleteTruck };
