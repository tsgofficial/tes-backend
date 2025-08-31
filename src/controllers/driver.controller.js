const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Drivers = db.drivers;

const getDrivers = catchAsync(async (req, res) => {
  const drivers = await Drivers.findAll({
    order: [['id', 'DESC']],
  });

  res.send({
    success: true,
    message: 'Fetched drivers data successfully',
    data: drivers,
  });
});

const createDriver = catchAsync(async (req, res) => {
  const { firstname, lastname } = req.body;

  const driver = await Drivers.create({ firstname, lastname });

  res.send({
    success: true,
    message: 'Driver created successfully',
    data: driver,
  });
});

const editDriver = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { firstname, lastname } = req.body;

  const driver = await Drivers.findByPk(id);
  if (!driver) {
    return res.status(404).send({
      success: false,
      message: 'Driver not found',
    });
  }

  driver.firstname = firstname;
  driver.lastname = lastname;
  await driver.save();

  res.send({
    success: true,
    message: 'Driver updated successfully',
    data: driver,
  });
});

const deleteDriver = catchAsync(async (req, res) => {
  const { id } = req.params;

  const driver = await Drivers.findByPk(id);
  if (!driver) {
    return res.status(404).send({
      success: false,
      message: 'Driver not found',
    });
  }

  await driver.destroy();

  res.send({
    success: true,
    message: 'Driver deleted successfully',
  });
});

module.exports = { getDrivers, createDriver, editDriver, deleteDriver };
