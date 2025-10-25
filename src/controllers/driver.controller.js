const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;
const Drivers = db.drivers;
const Trailers = db.trailers;

const registerRegExp = /^[А-ЯӨҮЁ]{2}\d{8}$/;

const getDrivers = catchAsync(async (req, res) => {
  const driversResult = await Drivers.findAll({
    order: [['id', 'DESC']],
    include: [
      {
        model: Trucks,
        as: 'truck',
        include: [
          {
            model: Trailers,
            as: 'trailer',
          },
        ],
      },
    ],
  });

  const drivers = driversResult.map((driver) => driver.get({ plain: true }));

  res.send({
    success: true,
    message: 'Fetched drivers data successfully',
    data: drivers,
  });
});

const createDriver = catchAsync(async (req, res) => {
  const { firstname, lastname, position, register, phone } = req.body;

  if (!registerRegExp.test(register)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid register format for driver',
    });
  }

  const existingDriver = await Drivers.findOne({ where: { register } });
  if (existingDriver) {
    return res.status(400).send({
      success: false,
      message: 'Driver with this register already exists',
    });
  }

  const driver = await Drivers.create({ firstname, lastname, position, register, phone });

  res.send({
    success: true,
    message: 'Driver created successfully',
    data: driver,
  });
});

const editDriver = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { firstname, lastname, position, register, phone } = req.body;

  if (!registerRegExp.test(register)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid register format for driver',
    });
  }

  const existingDriver = await Drivers.findOne({
    where: { register, id: { [db.Sequelize.Op.ne]: id } },
  });
  if (existingDriver) {
    return res.status(400).send({
      success: false,
      message: 'Another driver with this register already exists',
    });
  }

  const driver = await Drivers.findByPk(id);
  if (!driver) {
    return res.status(404).send({
      success: false,
      message: 'Driver not found',
    });
  }

  driver.firstname = firstname;
  driver.lastname = lastname;
  driver.position = position;
  driver.register = register;
  driver.phone = phone;
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
