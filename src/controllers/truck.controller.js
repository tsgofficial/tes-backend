const db = require('../models');
const catchAsync = require('../utils/catchAsync');
const { getTrucks } = require('../utils/functions/truck');

const Trucks = db.trucks;
const Drivers = db.drivers;
const Trailers = db.trailers;
const Containers = db.containers;
const DailyDeliveries = db.daily_deliveries;

const truckRegExp = /^\d{4}[А-ЯӨҮЁ]{3}$/;

const fetchTrucks = catchAsync(async (req, res) => {
  const trucks = await getTrucks();

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: trucks,
  });
});

const createTruck = catchAsync(async (req, res) => {
  const { driver_id, trailer_id, license_plate, last_battery_changed_at, last_inspected_at, containers } = req.body;

  if (!containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid containers data',
    });
  }

  if (!truckRegExp.test(license_plate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck license plate format',
    });
  }

  const existingTruck = await Trucks.findOne({ where: { license_plate } });
  if (existingTruck) {
    return res.status(400).send({
      success: false,
      message: 'Truck with this license plate already exists',
    });
  }

  const truck = await Trucks.create({
    trailer_id,
    license_plate,
    last_battery_changed_at,
    last_inspected_at,
  });

  const createdContainers = await Containers.bulkCreate(
    containers.map((container) => ({
      truck_id: truck.id,
      volume: container.volume,
    }))
  );

  let driver = null;
  if (driver_id) {
    driver = await Drivers.findByPk(driver_id);

    if (driver) {
      driver.truck_id = truck.id;
      driver.save();
    }
  }

  let trailer = null;
  if (trailer_id) {
    trailer = await Trailers.findByPk(trailer_id);
  }

  res.send({
    success: true,
    message: 'Truck created successfully',
    data: {
      ...truck.get({ plain: true }),
      driver: driver ? driver.get({ plain: true }) : null,
      trailer: trailer ? trailer.get({ plain: true }) : null,
      containers: createdContainers,
    },
  });
});

const editTruck = catchAsync(async (req, res) => {
  const { id } = req.params;
  const truckId = Number(id);

  const { driver_id, trailer_id, license_plate, last_battery_changed_at, last_inspected_at, containers } = req.body;

  if (!containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid containers data',
    });
  }

  if (!truckRegExp.test(license_plate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid truck license plate format',
    });
  }

  const truck = await Trucks.findByPk(truckId);
  if (!truck) {
    return res.status(404).send({
      success: false,
      message: 'Truck not found',
    });
  }

  const existingTruck = await Trucks.findOne({ where: { license_plate, id: { [db.Sequelize.Op.ne]: truckId } } });
  if (existingTruck) {
    return res.status(400).send({
      success: false,
      message: 'Truck with this license plate already exists',
    });
  }

  truck.trailer_id = trailer_id;
  truck.license_plate = license_plate;
  truck.last_battery_changed_at = last_battery_changed_at;
  truck.last_inspected_at = last_inspected_at;
  await truck.save();

  await Containers.destroy({ where: { truck_id: truckId } });
  const createdContainers = await Containers.bulkCreate(
    containers.map((container) => ({
      truck_id: truckId,
      volume: container.volume,
    }))
  );

  await Drivers.update({ truck_id: null }, { where: { truck_id: truckId } });

  let driver = null;
  if (driver_id) {
    driver = await Drivers.findByPk(driver_id);

    if (driver) {
      driver.truck_id = truck.id;
      driver.save();
    }
  }

  let trailer = null;
  if (trailer_id) {
    trailer = await Trailers.findByPk(trailer_id);
  }

  res.send({
    success: true,
    message: 'Truck updated successfully',
    data: {
      ...truck.get({ plain: true }),
      driver: driver ? driver.get({ plain: true }) : null,
      trailer: trailer ? trailer.get({ plain: true }) : null,
      containers: createdContainers,
    },
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

const postDailyTrucks = catchAsync(async (req, res) => {
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

module.exports = { fetchTrucks, createTruck, editTruck, deleteTruck, postDailyTrucks };
