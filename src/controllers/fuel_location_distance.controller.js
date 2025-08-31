const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const FuelLocations = db.fuel_locations;
const FuelLocationDistances = db.fuel_location_distances;

const getFuelLocationDistances = catchAsync(async (req, res) => {
  const { id } = req.params;

  let where = {};
  if (id) {
    where = {
      [db.Sequelize.Op.or]: [{ location_id_1: id }, { location_id_2: id }],
    };
  }
  const fuelLocationDistances = await FuelLocationDistances.findAll({
    where,
    attributes: ['id', 'name', 'distance'],
    include: [
      {
        model: FuelLocations,
        as: 'location1',
        attributes: ['id', 'name', 'latitude', 'longitude'],
      },
      {
        model: FuelLocations,
        as: 'location2',
        attributes: ['id', 'name', 'latitude', 'longitude'],
      },
    ],
    order: [['id', 'DESC']],
  });

  res.send({
    success: true,
    message: 'Fetched fuel location distances successfully',
    data: fuelLocationDistances,
  });
});

const createFuelLocationDistance = catchAsync(async (req, res) => {
  const { name, locationId1, locationId2, distance } = req.body;

  if (!name || !locationId1 || !locationId2 || !distance) {
    return res.status(400).send({
      success: false,
      message: 'All fields are required',
    });
  }

  if (locationId1 === locationId2) {
    return res.status(400).send({
      success: false,
      message: 'Location IDs must be different',
    });
  }

  const existingLocation = await FuelLocationDistances.findOne({ where: { name } });
  if (existingLocation) {
    return res.status(400).send({
      success: false,
      message: 'Fuel location with this name already exists',
    });
  }

  const fuelLocationDistance = await FuelLocationDistances.create({
    name,
    distance,
    location_id_1: locationId1,
    location_id_2: locationId2,
  });

  res.send({
    success: true,
    message: 'Fuel location distance created successfully',
    data: fuelLocationDistance,
  });
});

const editFuelLocationDistance = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name, locationId1, locationId2, distance } = req.body;

  if (!name || !locationId1 || !locationId2 || !distance) {
    return res.status(400).send({
      success: false,
      message: 'All fields are required',
    });
  }

  const fuelLocationDistance = await FuelLocationDistances.findByPk(id);
  if (!fuelLocationDistance) {
    return res.status(404).send({
      success: false,
      message: 'Fuel location not found',
    });
  }

  const existingLocation = await FuelLocationDistances.findOne({ where: { name, id: { [db.Sequelize.Op.ne]: id } } });
  if (existingLocation) {
    return res.status(400).send({
      success: false,
      message: 'Fuel location with this name already exists',
    });
  }

  fuelLocationDistance.name = name;
  fuelLocationDistance.location_id_1 = locationId1;
  fuelLocationDistance.location_id_2 = locationId2;
  fuelLocationDistance.distance = distance;
  await fuelLocationDistance.save();

  res.send({
    success: true,
    message: 'Fuel location distance updated successfully',
    data: fuelLocationDistance,
  });
});

const deleteFuelLocationDistance = catchAsync(async (req, res) => {
  const { id } = req.params;

  const fuelLocationDistance = await db.fuel_location_distances.findByPk(id);
  if (!fuelLocationDistance) {
    return res.status(404).send({
      success: false,
      message: 'Fuel location not found',
    });
  }

  await fuelLocationDistance.destroy();

  res.send({
    success: true,
    message: 'Fuel location distance deleted successfully',
  });
});

module.exports = {
  getFuelLocationDistances,
  createFuelLocationDistance,
  editFuelLocationDistance,
  deleteFuelLocationDistance,
};
