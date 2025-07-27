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

  const existingVolume = await Volumes.findOne({ where: { value } });
  if (existingVolume) {
    return res.status(400).send({
      success: false,
      message: 'Volume with this value already exists',
    });
  }

  const volume = await Volumes.create({ value });

  res.send({
    success: true,
    message: 'Volume created successfully',
    data: volume,
  });
});

const editVolume = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { value } = req.body;

  if (!value || Number.isNaN(value) || value <= 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid volume value',
    });
  }

  const volume = await Volumes.findByPk(id);
  if (!volume) {
    return res.status(404).send({
      success: false,
      message: 'Volume not found',
    });
  }

  const existingVolume = await Volumes.findOne({ where: { value, id: { [db.Sequelize.Op.ne]: id } } });
  if (existingVolume) {
    return res.status(400).send({
      success: false,
      message: 'Volume with this value already exists',
    });
  }

  volume.value = value;
  await volume.save();

  res.send({
    success: true,
    message: 'Volume updated successfully',
    data: volume,
  });
});

const deleteVolume = catchAsync(async (req, res) => {
  const { id } = req.params;

  const volume = await Volumes.findByPk(id);
  if (!volume) {
    return res.status(404).send({
      success: false,
      message: 'Volume not found',
    });
  }

  await volume.destroy();

  res.send({
    success: true,
    message: 'Volume deleted successfully',
  });
});

module.exports = { getVolumes, createVolume, editVolume, deleteVolume };
