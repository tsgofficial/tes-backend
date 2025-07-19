const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Volumes = db.volumes;

const getVolumes = catchAsync(async (req, res) => {
  const volumes = await Volumes.findAll();

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: volumes,
  });
});

const createVolume = catchAsync(async (req, res) => {
  const { value } = req.body;

  if (!value || Number.isNaN(value) || value <= 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid volume value',
    });
  }

  const volume = await Volumes.create({ value });

  res.send({
    success: true,
    message: 'Volume created successfully',
    data: volume,
  });
});

module.exports = { getVolumes, createVolume };
