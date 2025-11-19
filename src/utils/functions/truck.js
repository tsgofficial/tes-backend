const db = require('../../models');

const { trucks: Trucks, drivers: Drivers, trailers: Trailers, containers: Containers, truck_status: TruckStatus } = db;

async function getTrucks({ truckIds = [] } = {}) {
  const trucksResult = await Trucks.findAll({
    where: truckIds.length > 0 ? { id: { [db.Sequelize.Op.in]: truckIds } } : {},
    include: [
      {
        model: Drivers,
        as: 'driver',
      },
      {
        model: Trailers,
        as: 'trailer',
        include: [
          {
            model: Containers,
            as: 'containers',
            attributes: ['id', 'volume'],
          },
        ],
      },
      {
        model: Containers,
        as: 'containers',
        attributes: ['id', 'volume'],
      },
      {
        model: TruckStatus,
        as: 'status',
      },
    ],
    order: [['id', 'DESC']],
  });

  const trucks = trucksResult
    .map((truck) => truck.get({ plain: true }))
    .map((truck) => {
      const totalVolume = truck.containers.reduce((sum, container) => sum + container.volume, 0);
      const totalTrailerVolume = truck?.trailer?.containers?.reduce((sum, container) => sum + container.volume, 0);

      return {
        ...truck,
        status: truck.status?.name,
        trailer: { ...truck.trailer, totalVolume: totalTrailerVolume },
        totalVolume,
      };
    });

  return trucks;
}

module.exports = { getTrucks };
