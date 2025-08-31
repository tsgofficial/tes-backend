const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;
const Volumes = db.volumes;
const DeliveryDetails = db.delivery_details;
const FuelTypes = db.fuel_types;
const Deliveries = db.deliveries;
const Containers = db.containers;

const getDeliveries = catchAsync(async (req, res) => {
  const deliveries = await Deliveries.findAll({
    include: [
      {
        model: Trucks,
        as: 'truck',
        attributes: ['id', 'license_plate'],
      },
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        include: [
          {
            model: Trucks,
            as: 'truck',
            attributes: ['id', 'license_plate'],
          },
          {
            model: FuelTypes,
            as: 'fuelType',
            attributes: ['id', 'name'],
          },
          {
            model: Containers,
            as: 'container',
            attributes: ['id'],
            include: [
              {
                model: Volumes,
                as: 'containerVolume',
                attributes: ['value'],
              },
            ],
          },
        ],
      },
    ],
    order: [['id', 'DESC']],
  });

  const formattedDeliveries = deliveries.map((delivery) => ({
    id: delivery.id,
    date: delivery.date,
    driverId: delivery.driver_id,
    truck: {
      id: delivery.truck_id,
      licensePlate: delivery.truck?.license_plate || '',
      fuelDetails: delivery.deliveryDetails
        .filter((log) => log.truck_id === delivery.truck_id)
        .map((log) => ({
          id: log.id,
          fuelType: log.fuelType.name,
          fuelTypeId: log.fuelType.id,
          volume: log.container.containerVolume.value,
          volumeId: log.container.containerVolume.id,
          deliveryType: log.delivery_type,
        })),
    },
    trailers: (() => {
      const trailerMap = {};
      delivery.deliveryDetails
        .filter((log) => log.truck_id !== delivery.truck_id)
        .forEach((log) => {
          if (!trailerMap[log.truck_id]) {
            trailerMap[log.truck_id] = {
              id: log.truck_id,
              licensePlate: log.truck?.license_plate || '',
              fuelDetails: [],
            };
          }
          trailerMap[log.truck_id].fuelDetails.push({
            id: log.id,
            fuelType: log.fuelType.name,
            fuelTypeId: log.fuelType.id,
            volume: log.container.containerVolume.value,
            volumeId: log.container.containerVolume.id,
            deliveryType: log.delivery_type,
          });
        });
      return Object.values(trailerMap);
    })(),
  }));

  res.send({
    success: true,
    message: 'Fetched deliveries data successfully',
    data: formattedDeliveries,
  });
});

const createDelivery = catchAsync(async (req, res) => {
  const { date, driverId, truck, trailers } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !driverId || !truckId || (fuelDetails?.length ?? 0) === 0) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const existingTruck = await Trucks.findByPk(truckId, { include: [{ model: Containers, as: 'truckContainers' }] });

  const truckContainerIds = existingTruck.truckContainers.map((container) => container.id);
  const givenContainerIds = fuelDetails.map((detail) => detail.containerId);

  const allValidContainers = givenContainerIds.every((id) => truckContainerIds.includes(id));
  if (!allValidContainers) {
    return res.status(400).send({
      success: false,
      message: 'One or more container IDs are invalid for the selected truck',
    });
  }

  if (trailers && trailers.length > 0) {
    const trailerIds = trailers.map((trailer) => trailer.id);

    const existingTrailers = await Trucks.findAll({
      where: { id: trailerIds },
      include: [{ model: Containers, as: 'truckContainers' }],
    });

    const trailerMap = {};
    existingTrailers.forEach((trailer) => {
      trailerMap[trailer.id] = trailer.truckContainers.map((container) => container.id);
    });

    const invalidTrailer = trailers.find((trailer) => {
      const { id: trailerId, fuelDetails: trailerFuelDetails } = trailer || {};
      if (trailerId && trailerFuelDetails && trailerFuelDetails.length > 0) {
        const validContainerIds = trailerMap[trailerId] || [];
        const givenTrailerContainerIds = trailerFuelDetails.map((detail) => detail.containerId);
        const allValidTrailerContainers = givenTrailerContainerIds.every((id) => validContainerIds.includes(id));
        return !allValidTrailerContainers; // return true if invalid
      }
      return false;
    });

    if (invalidTrailer) {
      return res.status(400).send({
        success: false,
        message: `One or more container IDs are invalid for the trailer with ID ${invalidTrailer.id}`,
      });
    }
  }

  const delivery = await Deliveries.create({
    date,
    truck_id: truck.id,
    driver_id: driverId,
  });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: delivery.id,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailers && trailers.length > 0) {
    const trailerLogPromises = trailers
      .map((trailer) => {
        const { id: trailerId, fuelDetails: trailerFuelDetails } = trailer || {};

        if (trailerId && trailerFuelDetails && trailerFuelDetails.length > 0) {
          return trailerFuelDetails.map((fuelDetail) =>
            DeliveryDetails.create({
              delivery_id: delivery.id,
              truck_id: trailerId,
              fuel_type_id: fuelDetail.fuelTypeId,
              container_id: fuelDetail.containerId,
            })
          );
        }
        return [];
      })
      .flat();
    await Promise.all(trailerLogPromises);
  }

  res.send({
    success: true,
    message: 'Delivery created successfully',
    data: delivery,
  });
});

const editDelivery = catchAsync(async (req, res) => {
  const { id: deliveryId } = req.params;

  const { date, driverId, truck, trailers } = req.body;

  const { id: truckId, fuelDetails } = truck || {};

  if (!date || !driverId || !truckId || (fuelDetails?.length ?? 0) === 0) {
    return res.status(400).send({
      success: false,
      message: 'Missing required fields',
    });
  }

  const existingTruck = await Trucks.findByPk(truckId, { include: [{ model: Containers, as: 'truckContainers' }] });

  const truckContainerIds = existingTruck.truckContainers.map((container) => container.id);
  const givenContainerIds = fuelDetails.map((detail) => detail.containerId);

  const allValidContainers = givenContainerIds.every((id) => truckContainerIds.includes(id));
  if (!allValidContainers) {
    return res.status(400).send({
      success: false,
      message: 'One or more container IDs are invalid for the selected truck',
    });
  }

  if (trailers && trailers.length > 0) {
    const trailerIds = trailers.map((trailer) => trailer.id);

    const existingTrailers = await Trucks.findAll({
      where: { id: trailerIds },
      include: [{ model: Containers, as: 'truckContainers' }],
    });

    const trailerMap = {};
    existingTrailers.forEach((trailer) => {
      trailerMap[trailer.id] = trailer.truckContainers.map((container) => container.id);
    });

    const invalidTrailer = trailers.find((trailer) => {
      const { id: trailerId, fuelDetails: trailerFuelDetails } = trailer || {};
      if (trailerId && trailerFuelDetails && trailerFuelDetails.length > 0) {
        const validContainerIds = trailerMap[trailerId] || [];
        const givenTrailerContainerIds = trailerFuelDetails.map((detail) => detail.containerId);
        const allValidTrailerContainers = givenTrailerContainerIds.every((id) => validContainerIds.includes(id));
        return !allValidTrailerContainers; // return true if invalid
      }
      return false;
    });

    if (invalidTrailer) {
      return res.status(400).send({
        success: false,
        message: `One or more container IDs are invalid for the trailer with ID ${invalidTrailer.id}`,
      });
    }
  }

  const delivery = await Deliveries.findByPk(deliveryId);
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  delivery.date = date;
  delivery.driver_id = driverId;
  delivery.truck_id = truckId;
  await delivery.save();

  await DeliveryDetails.destroy({ where: { delivery_id: deliveryId } });

  const fuelLogPromises = fuelDetails.map((fuelDetail) =>
    DeliveryDetails.create({
      delivery_id: deliveryId,
      truck_id: truckId,
      fuel_type_id: fuelDetail.fuelTypeId,
      container_id: fuelDetail.containerId,
    })
  );
  await Promise.all(fuelLogPromises);

  if (trailers && trailers.length > 0) {
    const trailerLogPromises = trailers
      .map((trailer) => {
        const { id: trailerId, fuelDetails: trailerFuelDetails } = trailer || {};

        if (trailerId && trailerFuelDetails && trailerFuelDetails.length > 0) {
          return trailerFuelDetails.map((fuelDetail) =>
            DeliveryDetails.create({
              delivery_id: deliveryId,
              truck_id: trailerId,
              fuel_type_id: fuelDetail.fuelTypeId,
              container_id: fuelDetail.containerId,
            })
          );
        }
        return [];
      })
      .flat();
    await Promise.all(trailerLogPromises);
  }

  res.send({
    success: true,
    message: 'Delivery updated successfully',
    data: delivery,
  });
});

module.exports = { getDeliveries, createDelivery, editDelivery };
