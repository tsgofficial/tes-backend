const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const FuelLocations = db.fuel_locations;

const getFuelLocations = catchAsync(async (req, res) => {
  const fuelLocations = await FuelLocations.findAll();

  res.send({
    success: true,
    message: 'Fetched fuel locations successfully',
    data: fuelLocations,
  });
});

const createFuelLocation = catchAsync(async (req, res) => {
  const { name, latitude, longitude, distance } = req.body;

  const fuelLocation = await FuelLocations.create({ name, latitude, longitude, distance });

  res.send({
    success: true,
    message: 'Fuel location created successfully',
    data: fuelLocation,
  });
});

const editFuelLocation = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name, latitude, longitude, distance } = req.body;

  const fuelLocation = await FuelLocations.findByPk(id);
  if (!fuelLocation) {
    return res.status(404).send({
      success: false,
      message: 'Fuel location not found',
    });
  }

  fuelLocation.name = name;
  fuelLocation.latitude = latitude;
  fuelLocation.longitude = longitude;
  fuelLocation.distance = distance;
  await fuelLocation.save();

  res.send({
    success: true,
    message: 'Fuel location updated successfully',
    data: fuelLocation,
  });
});

module.exports = { getFuelLocations, createFuelLocation, editFuelLocation };
