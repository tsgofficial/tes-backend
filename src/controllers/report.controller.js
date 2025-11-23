const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

// Import models for better code organization
const {
  users: Users,
  trucks: Trucks,
  drivers: Drivers,
  trailers: Trailers,
  fuel_types: FuelTypes,
  deliveries: Deliveries,
  containers: Containers,
  fuel_locations: FuelLocations,
  delivery_details: DeliveryDetails,
  fuel_location_distances: FuelLocationDistances,
  // daily_deliveries: DailyDeliveries,
} = db;

/**
 * Generate comprehensive delivery report with totals and detailed breakdown
 *
 * @route GET /api/reports
 * @param {string} startDate - Start date for report period (YYYY-MM-DD)
 * @param {string} endDate - End date for report period (YYYY-MM-DD)
 * @param {number} [driverId] - Optional driver ID filter
 * @param {number} [truckId] - Optional truck ID filter
 * @param {number} [trailerId] - Optional trailer ID filter
 * @returns {Object} Comprehensive report with totals and delivery details
 *
 * Response structure:
 * - totalMass: Sum of all fuel masses in the period
 * - totalTonKm: Sum of all ton-kilometers (mass * distance)
 * - totalVolume: Sum of all fuel volumes
 * - totalDistance: Sum of all distances traveled
 * - totalWithLoadDistance: Sum of outbound distances (with load)
 * - totalWithoutLoadDistance: Sum of return distances (without load)
 * - totalFuelTypeDetail: Aggregated fuel type statistics
 * - deliveries: Detailed delivery information grouped by date and location
 */
const getReport = catchAsync(async (req, res) => {
  const { startDate, endDate, driverId, truckId } = req.query;

  // Validate required parameters
  if (!startDate || !endDate) {
    return res.status(400).send({
      success: false,
      message: 'Start date and end date are required (format: YYYY-MM-DD)',
    });
  }

  if (!driverId && !truckId) {
    return res.status(400).send({
      success: false,
      message: 'Either driverId, truckId, or trailerId is required for filtering',
    });
  }

  // Validate date format
  const startDateObj = new Date(startDate);
  const endDateObj = new Date(endDate);

  if (Number.isNaN(startDateObj.getTime()) || Number.isNaN(endDateObj.getTime())) {
    return res.status(400).send({
      success: false,
      message: 'Invalid date format. Please use YYYY-MM-DD format',
    });
  }

  if (startDateObj > endDateObj) {
    return res.status(400).send({
      success: false,
      message: 'Start date cannot be later than end date',
    });
  }

  // Build dynamic where conditions
  const whereConditions = {
    date: {
      [Op.between]: [startDateObj, endDateObj],
    },
  };

  if (truckId) {
    whereConditions.truck_id = parseInt(truckId, 10);
  }

  if (driverId) {
    whereConditions.driver_id = parseInt(driverId, 10);
  }

  const deliveries = await Deliveries.findAll({
    where: whereConditions,
    include: [
      {
        model: Drivers,
        as: 'driver',
        attributes: ['id', 'firstname', 'lastname'],
      },
      {
        model: Trucks,
        as: 'truck',
        attributes: ['id', 'license_plate'],
      },
      {
        model: Trailers,
        as: 'trailer',
        attributes: ['id', 'license_plate'],
      },
      {
        model: FuelLocationDistances,
        as: 'toDistance',
        attributes: ['id', 'name', 'distance'],
      },
      {
        model: DeliveryDetails,
        as: 'deliveryDetails',
        where: {
          density: { [Op.ne]: null },
        },
        include: [
          {
            model: FuelTypes,
            as: 'fuelType',
            attributes: ['id', 'name'],
          },
          {
            model: Containers,
            as: 'container',
          },
          {
            model: Trucks,
            as: 'truck',
            attributes: ['id', 'license_plate'],
          },
          {
            model: Trailers,
            as: 'trailer',
            attributes: ['id', 'license_plate'],
          },
          {
            model: Users,
            as: 'receiver',
            attributes: ['id', 'firstname', 'lastname'],
            include: [
              {
                model: FuelLocations,
                as: 'location',
                attributes: ['id', 'name'],
              },
            ],
          },
          {
            model: FuelLocationDistances,
            as: 'fromDistance',
          },
        ],
      },
    ],
    order: [['date', 'ASC']],
  });

  // // Initialize totals
  // let totalMass = 0;
  // let totalTonKm = 0;
  // let totalVolume = 0;
  // let totalDistance = 0;
  // let totalWithLoadDistance = 0;
  // let totalWithoutLoadDistance = 0;

  // // Fuel type aggregation map
  // const fuelTypeMap = new Map();

  // Process deliveries and calculate totals
  const processedDeliveries = deliveries.map((delivery) => {
    const toDistance = delivery.toDistance?.distance || 0;
    const fromDistance = Math.max(...delivery.deliveryDetails.map((d) => d.fromDistance?.distance ?? 0), 0);

    const deliveryTotalDistance = fromDistance + toDistance;
    const deliveryAverageDistance = deliveryTotalDistance / 2;

    // Add to total distances
    // totalDistance += deliveryTotalDistance;
    // totalWithLoadDistance += fromDistance;
    // totalWithoutLoadDistance += toDistance;

    // Build nested Maps: Map<fuelTypeId, Map<locationId, summary>>
    const eachFuelTypeLocationMap = new Map();
    // Keep a simple map of fuel type names: Map<fuelTypeId, fuelTypeName>
    const fuelTypeNameMap = new Map();

    let deliveryTotalMass = 0;

    delivery.deliveryDetails.forEach((detail) => {
      const volume = detail.container?.volume || 0;
      const density = parseFloat(detail.density) || 0;
      const mass = volume * density;

      deliveryTotalMass += mass;

      const fuelTypeId = detail.fuel_type_id;
      const fuelTypeName = detail.fuelType?.name ?? null;
      if (!fuelTypeNameMap.has(fuelTypeId)) fuelTypeNameMap.set(fuelTypeId, fuelTypeName);

      // Determine a location for this detail. Prefer `fromDistance.location2`, then `receiver.location`.
      const locationObj = detail.fromDistance?.location2 ?? detail.receiver?.location ?? null;
      const locationKey = locationObj?.id ?? 'unknown';
      const locationName = locationObj?.name ?? null;

      // Ensure outer map for fuel type exists
      if (!eachFuelTypeLocationMap.has(fuelTypeId)) {
        eachFuelTypeLocationMap.set(fuelTypeId, new Map());
      }
      const locationMap = eachFuelTypeLocationMap.get(fuelTypeId);

      // Ensure inner map entry for this location exists
      if (!locationMap.has(locationKey)) {
        locationMap.set(locationKey, {
          id: locationObj?.id ?? null,
          name: locationName,
          mass: 0,
          count: 0,
          volume: 0,
          totalDensity: 0,
          averageDensity: 0,
          locationDetail: locationObj ? { id: locationObj.id, name: locationObj.name } : null,
          // Collect receivers per location as a Map to dedupe
          receiversMap: new Map(),
        });
      }

      const loc = locationMap.get(locationKey);
      loc.mass += mass;
      loc.count += 1;
      loc.volume += volume;
      loc.totalDensity += density;
      loc.averageDensity = loc.totalDensity / loc.count;

      if (detail.receiver) {
        const r = detail.receiver;
        if (!loc.receiversMap.has(r.id)) {
          loc.receiversMap.set(r.id, { id: r.id, firstname: r.firstname, lastname: r.lastname });
        }
      }

      // // Group by truck or trailer
      // const { truck, trailer } = detail;

      // // Handle truck fuel details
      // if (truck && detail.truck_id) {
      //   if (!trucksMap.has(truck.id)) {
      //     trucksMap.set(truck.id, {
      //       id: truck.id,
      //       license_plate: truck.license_plate,
      //       fuelDetails: [],
      //     });
      //   }
      //   trucksMap.get(truck.id).fuelDetails.push(fuelDetail);
      // }

      // // Handle trailer fuel details
      // if (trailer && detail.trailer_id) {
      //   if (!trailersMap.has(trailer.id)) {
      //     trailersMap.set(trailer.id, {
      //       id: trailer.id,
      //       license_plate: trailer.license_plate,
      //       fuelDetails: [],
      //     });
      //   }
      //   trailersMap.get(trailer.id).fuelDetails.push(fuelDetail);
      // }
    });

    // Calculate ton-km for this delivery
    const deliveryTonKm = (deliveryTotalMass * deliveryAverageDistance) / 1000;

    return {
      date: delivery.date ? new Date(delivery.date).toISOString().split('T')[0] : null,
      truck: delivery.truck
        ? {
            id: delivery.truck.id,
            license_plate: delivery.truck.license_plate,
          }
        : null,
      trailer: delivery.trailer
        ? {
            id: delivery.trailer.id,
            license_plate: delivery.trailer.license_plate,
          }
        : null,
      driver: delivery.driver
        ? {
            id: delivery.driver.id,
            firstname: delivery.driver.firstname,
            lastname: delivery.driver.lastname,
          }
        : null,
      tonKm: Math.round(deliveryTonKm * 100) / 100, // Round to 2 decimal places
      withLoadDistance: Math.round(fromDistance * 100) / 100,
      withoutLoadDistance: Math.round(toDistance * 100) / 100,
      details: Array.from(eachFuelTypeLocationMap.entries()).map(([fuelTypeId, locationMap]) => {
        const fuelName = fuelTypeNameMap.get(fuelTypeId) || null;
        return {
          id: fuelTypeId,
          name: fuelName,
          locations: Array.from(locationMap.values()).map((loc) => ({
            id: loc.id,
            name: loc.name,
            mass: Math.round(loc.mass * 100) / 100,
            volume: Math.round(loc.volume * 100) / 100,
            averageDensity: Math.round(loc.averageDensity * 1000) / 1000, // Round to 3 decimal places
            locationDetail: loc.locationDetail,
            receivers: Array.from(loc.receiversMap.values()),
          })),
        };
      }),
    };
  });

  const deliveryDateMap = new Map();
  processedDeliveries.forEach((delivery) => {
    const { date, ...rest } = delivery;
    if (!date) return;

    if (!deliveryDateMap.has(date)) {
      deliveryDateMap.set(date, []);
    }
    deliveryDateMap.get(date).push(rest);
  });

  // Convert fuel type map to array and clean up averages
  // const totalFuelTypeDetail = Array.from(fuelTypeMap.values()).map((ft) => ({
  //   id: ft.id,
  //   name: ft.name,
  //   volume: Math.round(ft.volume * 100) / 100,
  //   averageDensity: Math.round(ft.averageDensity * 1000) / 1000, // Round to 3 decimal places
  // }));

  // Prepare final response
  const reportData = {
    // totalMass: Math.round(totalMass * 100) / 100,
    // totalTonKm: Math.round(totalTonKm * 100) / 100,
    // totalVolume: Math.round(totalVolume * 100) / 100,
    // totalDistance: Math.round(totalDistance * 100) / 100,
    // totalWithLoadDistance: Math.round(totalWithLoadDistance * 100) / 100,
    // totalWithoutLoadDistance: Math.round(totalWithoutLoadDistance * 100) / 100,
    // totalFuelTypeDetail,
    deliveries: Array.from(deliveryDateMap.entries()).map(([date, value]) => ({ date, deliveries: value })),
  };

  res.send({
    success: true,
    message: `Report generated successfully for period ${startDate} to ${endDate}`,
    data: reportData,
  });
});

module.exports = { getReport };
