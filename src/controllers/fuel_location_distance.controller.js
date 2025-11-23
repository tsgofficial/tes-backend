const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const FuelLocations = db.fuel_locations;
const FuelLocationDistances = db.fuel_location_distances;

const getFuelLocationDistances = catchAsync(async (req, res) => {
  const { location_id } = req.user;

  let where = {};
  if (location_id) {
    where = {
      [db.Sequelize.Op.or]: [{ location_id_1: location_id }, { location_id_2: location_id }],
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
    order: [['distance', 'ASC']],
  });

  res.send({
    success: true,
    message: 'Fetched fuel location distances successfully',
    data: fuelLocationDistances
      .map((fld) => fld.get({ plain: true }))
      .map((fld) => ({
        ...fld,
        locationDistanceName: `${fld.location1.name} - ${fld.location2.name} ${fld.name ? `(${fld.name})` : ''}`,
      })),
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

  const createdFuelLocationDistance = await FuelLocationDistances.create({
    name,
    distance,
    location_id_1: locationId1,
    location_id_2: locationId2,
  });

  const fuelLocationDistance = await FuelLocationDistances.findByPk(createdFuelLocationDistance.id, {
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

  const existingFuelLocationDistance = await FuelLocationDistances.findByPk(id);
  if (!existingFuelLocationDistance) {
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

  existingFuelLocationDistance.name = name;
  existingFuelLocationDistance.location_id_1 = locationId1;
  existingFuelLocationDistance.location_id_2 = locationId2;
  existingFuelLocationDistance.distance = distance;
  const updatedFuelLocationDistance = await existingFuelLocationDistance.save();

  const fuelLocationDistance = await FuelLocationDistances.findByPk(updatedFuelLocationDistance.id, {
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
