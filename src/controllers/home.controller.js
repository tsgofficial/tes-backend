const db = require('../models');

const Trucks = db.trucks;
const TruckStatus = db.truck_status;

const Containers = db.containers;
const Deliveries = db.deliveries;
const DeliveryDetails = db.delivery_details;
const FuelLocationDistances = db.fuel_location_distances;

const fetchTrucksByStatus = async (req, res) => {
  const trucksByStatus = await TruckStatus.findAll({
    include: [
      {
        model: Trucks,
        as: 'trucks',
      },
    ],
  });

  const formattedData = trucksByStatus.map((status) => ({
    id: status.id,
    name: status.name,
    color: status.color,
    truckCount: status.trucks.length,
  }));

  res.send({
    success: true,
    message: 'Trucks by status fetched successfully',
    data: formattedData,
  });
};

const fetchDeliveryDistanceVolume = async (req, res) => {
  const deliveries = await Deliveries.findAll({
    where: {
      to_distance_id: { [db.Sequelize.Op.ne]: null },
    },
    include: [
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        where: {
          from_distance_id: { [db.Sequelize.Op.ne]: null },
        },
        include: [
          {
            model: FuelLocationDistances,
            as: 'fromDistance',
            attributes: ['distance'],
          },
          {
            model: Containers,
            as: 'container',
            attributes: ['volume'],
          },
        ],
      },
      {
        model: FuelLocationDistances,
        as: 'toDistance',
        attributes: ['distance'],
      },
    ],
  });

  let totalVolume = 0;
  let totalDistance = 0;

  deliveries.forEach((delivery) => {
    let highestFromDistance = 0;
    delivery.deliveryDetails.forEach((detail) => {
      totalVolume += detail.container.volume;

      if (detail.fromDistance.distance > highestFromDistance) {
        highestFromDistance = detail.fromDistance.distance;
      }
    });

    totalDistance += highestFromDistance + delivery.toDistance.distance;
  });

  res.send({
    success: true,
    message: 'Delivery distance and volume fetched successfully',
    data: {
      totalVolume,
      totalDistance,
    },
  });
};

module.exports = { fetchTrucksByStatus, fetchDeliveryDistanceVolume };
