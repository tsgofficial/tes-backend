const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Volumes = db.volumes;
const FuelLogs = db.fuel_logs;
const FuelTypes = db.fuel_types;
const Deliveries = db.deliveries;
const Containers = db.containers;

const getReport = catchAsync(async (req, res) => {
  const { startDate, endDate, driverId, truckId } = req.query;

  if (!startDate || !endDate) {
    return res.status(400).send({
      success: false,
      message: 'Start date and end date are required',
    });
  }

  if (!driverId && !truckId) {
    return res.status(400).send({
      success: false,
      message: 'Either driverId or truckId is required',
    });
  }

  const whereConditions = {
    started_at: {
      [db.Sequelize.Op.between]: [new Date(startDate), new Date(endDate)],
    },
  };

  if (driverId) {
    whereConditions.driver_id = driverId;
  }

  if (truckId) {
    whereConditions.truck_id = truckId;
  }

  const deliveries = await Deliveries.findAll({
    where: whereConditions,
    include: [
      {
        model: FuelLogs,
        as: 'fuelLogs',
        include: [
          { model: FuelTypes, as: 'fuelType' },
          { model: Containers, as: 'container', include: [{ model: Volumes, as: 'containerVolume' }] },
        ],
      },
    ],
    raw: true,
    nest: true,
  });

  // // let totalVolume = 0;
  // // let totalDistance = 0;
  // deliveries.forEach((delivery) => {
  //   delivery.fuelLogs.forEach((fuelLog) => {
  //     totalVolume += fuelLog.container.containerVolume.volume;
  //   });
  // });

  res.send({
    success: true,
    message: 'Fetched report data successfully',
    data: deliveries.map((delivery) => ({
      id: delivery.id,
      driverId: delivery.driver_id,
      truckId: delivery.truck_id,
      fuelLogs: delivery.fuelLogs.map((fuelLog) => ({
        id: fuelLog.id,
        fuelType: fuelLog.fuelType.name,
        container: fuelLog.container.name,
        volume: fuelLog.container.containerVolume.volume,
      })),
    })),
  });
});

module.exports = { getReport };
