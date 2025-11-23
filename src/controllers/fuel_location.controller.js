const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const FuelLocations = db.fuel_locations;

const getFuelLocations = catchAsync(async (req, res) => {
  const { type } = req.query;

  const whereClause = {};
  if (type === 'from' || type === 'to') {
    whereClause.type = type;
  }

  const fuelLocations = await FuelLocations.findAll({
    where: whereClause,
  });

  res.send({
    success: true,
    message: 'Fetched fuel locations successfully',
    data: fuelLocations
      .map((location) => location.get({ plain: true }))
      .map((location) => ({
        ...location,
        locationName: `${location.location} ${location.district ? `(${location.district})` : ''}`,
      })),
  });
});

const createFuelLocation = catchAsync(async (req, res) => {
  const { name, latitude, longitude } = req.body;

  const existingLocation = await FuelLocations.findOne({ where: { name } });
  if (existingLocation) {
    return res.status(400).send({
      success: false,
      message: 'Fuel location with this name already exists',
    });
  }

  const fuelLocation = await FuelLocations.create({ name, latitude, longitude });

  res.send({
    success: true,
    message: 'Fuel location created successfully',
    data: fuelLocation,
  });
});

const editFuelLocation = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name, latitude, longitude } = req.body;

  const fuelLocation = await FuelLocations.findByPk(id);
  if (!fuelLocation) {
    return res.status(404).send({
      success: false,
      message: 'Fuel location not found',
    });
  }

  const existingLocation = await FuelLocations.findOne({ where: { name, id: { [db.Sequelize.Op.ne]: id } } });
  if (existingLocation) {
    return res.status(400).send({
      success: false,
      message: 'Fuel location with this name already exists',
    });
  }

  fuelLocation.name = name;
  fuelLocation.latitude = latitude;
  fuelLocation.longitude = longitude;
  await fuelLocation.save();

  res.send({
    success: true,
    message: 'Fuel location updated successfully',
    data: fuelLocation,
  });
});

const deleteFuelLocation = catchAsync(async (req, res) => {
  const { id } = req.params;

  const fuelLocation = await FuelLocations.findByPk(id);
  if (!fuelLocation) {
    return res.status(404).send({
      success: false,
      message: 'Fuel location not found',
    });
  }

  await fuelLocation.destroy();

  res.send({
    success: true,
    message: 'Fuel location deleted successfully',
  });
});

module.exports = { getFuelLocations, createFuelLocation, editFuelLocation, deleteFuelLocation };
