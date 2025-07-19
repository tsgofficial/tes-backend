const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;

const mongolianRegex = /^\d{4}[А-Яа-яӨөҮү]{3}$/;

const getTrucks = catchAsync(async (req, res) => {
  const trucks = await Trucks.findAll({
    attributes: ['id', 'license_plate'],
    include: [
      {
        attributes: ['id'],
        model: db.containers,
        as: 'truckContainers',
        include: [
          {
            model: db.volumes,
            as: 'containerVolume',
            attributes: ['value'],
          },
        ],
      },
    ],
  });

  const formattedTrucks = trucks.map((truck) => {
    const containers = truck.truckContainers.map((container) => ({
      id: container.id,
      volume: container.containerVolume ? container.containerVolume.value : null,
    }));
    return {
      id: truck.id,
      license_plate: truck.license_plate,
      containers,
    };
  });

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: formattedTrucks,
  });
});

const createTruck = catchAsync(async (req, res) => {
  const { license_plate, containers } = req.body;

  if (!mongolianRegex.test(license_plate) || !containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid license plate format',
    });
  }

  const truck = await Trucks.create({ license_plate });

  const containerPromises = containers.map((container) =>
    db.containers.create({
      truck_id: truck.id,
      volume_id: container.volumeId,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Truck created successfully',
    data: truck,
  });
});

const editTruck = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { license_plate, containers } = req.body;

  if (!mongolianRegex.test(license_plate) || !containers || containers.length === 0) {
    return res.status(400).send({
      success: false,
      message: 'Invalid license plate format',
    });
  }

  const truck = await Trucks.findByPk(id);
  if (!truck) {
    return res.status(404).send({
      success: false,
      message: 'Truck not found',
    });
  }

  truck.license_plate = license_plate;
  await truck.save();

  await db.containers.destroy({ where: { truck_id: id } });
  const containerPromises = containers.map((container) =>
    db.containers.create({
      truck_id: truck.id,
      volume_id: container.volumeId,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Truck updated successfully',
    data: truck,
  });
});

module.exports = { getTrucks, createTruck, editTruck };
