const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const FuelTypes = db.fuel_types;

const getFuelTypes = catchAsync(async (req, res) => {
  const fuels = await FuelTypes.findAll();
  res.status(200).json({ success: true, data: fuels.map((fuel) => fuel.get({ plain: true })) });
});

module.exports = {
  getFuelTypes,
};
