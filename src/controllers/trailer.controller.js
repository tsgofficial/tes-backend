const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;
const Drivers = db.drivers;
const Trailers = db.trailers;
const Containers = db.containers;

const trailerRegExp = /^\d{4}[А-ЯӨҮЁ]{2}$/;

const getTrailers = catchAsync(async (req, res) => {
  const trailersResult = await Trailers.findAll({
    include: [
      {
        model: Trucks,
        as: 'truck',
        include: [
          {
            model: Drivers,
            as: 'driver',
          },
        ],
      },
      {
        model: Containers,
        as: 'containers',
        attributes: ['id', 'volume'],
      },
    ],
    order: [['id', 'DESC']],
  });

  const trailers = trailersResult.map((trailer) => trailer.get({ plain: true }));

  res.send({
    success: true,
    message: 'Fetched trailers data successfully',
    data: trailers,
  });
});

const createTrailer = catchAsync(async (req, res) => {
  const { license_plate, truck_id, containers } = req.body;

  if (!trailerRegExp.test(license_plate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid license plate format for trailer',
    });
  }

  const existingTrailer = await Trailers.findOne({ where: { license_plate } });
  if (existingTrailer) {
    return res.status(400).send({
      success: false,
      message: 'Trailer with this license plate already exists',
    });
  }

  const newTrailer = await Trailers.create({
    license_plate,
    truck_id,
  });

  const containerPromises = containers.map((container) =>
    Containers.create({
      trailer_id: newTrailer.id,
      volume: container.volume,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Trailer created successfully',
    data: {
      id: newTrailer.id,
      license_plate: newTrailer.license_plate,
      lastInspectedAt: newTrailer.last_inspected_at,
      containers: containers.map((container) => ({ volume: container.volume })),
    },
  });
});

const editTrailer = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { license_plate, truck_id, containers } = req.body;

  if (!trailerRegExp.test(license_plate)) {
    return res.status(400).send({
      success: false,
      message: 'Invalid license plate format for trailer',
    });
  }

  const existingTrailer = await Trailers.findOne({
    where: { license_plate, id: { [db.Sequelize.Op.ne]: id } },
  });
  if (existingTrailer) {
    return res.status(400).send({
      success: false,
      message: 'Trailer with this license plate already exists',
    });
  }

  const trailer = await Trailers.findByPk(id);
  if (!trailer) {
    return res.status(404).send({
      success: false,
      message: 'Trailer not found',
    });
  }

  trailer.truck_id = truck_id;
  trailer.license_plate = license_plate;
  await trailer.save();

  await Containers.destroy({ where: { trailer_id: id } });
  const containerPromises = containers.map((container) =>
    Containers.create({
      trailer_id: id,
      volume: container.volume,
    })
  );
  await Promise.all(containerPromises);

  res.send({
    success: true,
    message: 'Trailer updated successfully',
  });
});

const deleteTrailer = catchAsync(async (req, res) => {
  const { id } = req.params;

  await Trailers.destroy({ where: { id } });

  res.send({
    success: true,
    message: 'Trailer deleted successfully',
  });
});

module.exports = { getTrailers, createTrailer, editTrailer, deleteTrailer };
