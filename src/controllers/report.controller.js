const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

// Import models for better code organization
const {
  volumes: Volumes,
  delivery_details: DeliveryDetails,
  fuel_types: FuelTypes,
  deliveries: Deliveries,
  containers: Containers,
  fuel_location_distances: FuelLocationDistances,
  trucks: Trucks,
  users: Users,
  fuel_locations: FuelLocations,
} = db;

/**
 * Generate comprehensive delivery report with totals and detailed breakdown
 *
 * @route GET /api/reports
 * @param {string} startDate - Start date for report period (YYYY-MM-DD)
 * @param {string} endDate - End date for report period (YYYY-MM-DD)
 * @param {number} [driverId] - Optional driver ID filter
 * @param {number} [truckId] - Optional truck ID filter
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
      message: 'Either driverId or truckId is required for filtering',
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

  if (driverId) {
    whereConditions.driver_id = parseInt(driverId, 10);
  }

  if (truckId) {
    whereConditions.truck_id = parseInt(truckId, 10);
  }

  try {
    // Fetch deliveries with comprehensive includes
    const deliveries = await Deliveries.findAll({
      where: whereConditions,
      include: [
        {
          model: DeliveryDetails,
          as: 'deliveryDetails',
          include: [
            {
              model: FuelTypes,
              as: 'fuelType',
              attributes: ['id', 'name'],
            },
            {
              model: Containers,
              as: 'container',
              include: [
                {
                  model: Volumes,
                  as: 'containerVolume',
                  attributes: ['id', 'value'],
                },
              ],
            },
            {
              model: Trucks,
              as: 'truck',
              attributes: ['id', 'license_plate', 'type'],
            },
          ],
        },
        {
          model: FuelLocationDistances,
          as: 'outboundDistance',
          attributes: ['id', 'name', 'distance'],
          include: [
            {
              model: FuelLocations,
              as: 'location2',
              attributes: ['id', 'name'],
            },
          ],
        },
        {
          model: FuelLocationDistances,
          as: 'returnDistance',
          attributes: ['id', 'name', 'distance'],
        },
        {
          model: Users,
          as: 'receiver',
          attributes: ['id', 'firstname', 'lastname'],
        },
      ],
      order: [['date', 'ASC']],
    });

    // Initialize totals
    let totalMass = 0;
    let totalTonKm = 0;
    let totalVolume = 0;
    let totalDistance = 0;
    let totalWithLoadDistance = 0;
    let totalWithoutLoadDistance = 0;

    // Fuel type aggregation map
    const fuelTypeMap = new Map();

    // Process deliveries and calculate totals
    const processedDeliveries = deliveries.map((delivery) => {
      const outboundDistance = delivery.outboundDistance?.distance || 0;
      const returnDistance = delivery.returnDistance?.distance || 0;
      const deliveryTotalDistance = outboundDistance + returnDistance;

      // Add to total distances
      totalDistance += deliveryTotalDistance;
      totalWithLoadDistance += outboundDistance;
      totalWithoutLoadDistance += returnDistance;

      // Group delivery details by truck and trailer
      const trucksMap = new Map();
      const trailersMap = new Map();

      let deliveryTotalMass = 0;
      const deliveryFuelTypes = new Map();

      delivery.deliveryDetails.forEach((detail) => {
        const volume = detail.container?.containerVolume?.value || 0;
        const density = parseFloat(detail.density) || 0;
        const mass = volume * density;

        // Add to totals
        totalVolume += volume;
        totalMass += mass;
        deliveryTotalMass += mass;

        // Calculate ton-km (mass in tons * distance in km)
        const tonKm = (mass / 1000) * deliveryTotalDistance;
        totalTonKm += tonKm;

        // Aggregate fuel types
        const fuelTypeId = detail.fuel_type_id;
        const fuelTypeName = detail.fuelType?.name || 'Unknown';

        if (fuelTypeMap.has(fuelTypeId)) {
          const existing = fuelTypeMap.get(fuelTypeId);
          existing.volume += volume;
          existing.totalDensity += density;
          existing.count += 1;
          existing.averageDensity = existing.totalDensity / existing.count;
        } else {
          fuelTypeMap.set(fuelTypeId, {
            id: fuelTypeId,
            name: fuelTypeName,
            volume,
            totalDensity: density,
            count: 1,
            averageDensity: density,
          });
        }

        // Aggregate delivery fuel types
        if (deliveryFuelTypes.has(fuelTypeId)) {
          deliveryFuelTypes.get(fuelTypeId).volume += volume;
        } else {
          deliveryFuelTypes.set(fuelTypeId, {
            id: fuelTypeId,
            name: fuelTypeName,
            volume,
          });
        }

        // Create fuel detail object
        const fuelDetail = {
          containerId: detail.container_id,
          volumeId: detail.container?.volume_id,
          volume,
          density,
          fuelTypeId,
          fuelName: fuelTypeName,
          mass,
        };

        // Group by truck type
        const { truck } = detail;
        if (truck) {
          if (truck.type === 'truck') {
            if (!trucksMap.has(truck.id)) {
              trucksMap.set(truck.id, {
                id: truck.id,
                license_plate: truck.license_plate,
                fuelDetails: [],
              });
            }
            trucksMap.get(truck.id).fuelDetails.push(fuelDetail);
          } else if (truck.type === 'trailer') {
            if (!trailersMap.has(truck.id)) {
              trailersMap.set(truck.id, {
                id: truck.id,
                license_plate: truck.license_plate,
                fuelDetails: [],
              });
            }
            trailersMap.get(truck.id).fuelDetails.push(fuelDetail);
          }
        }
      });

      // Calculate ton-km for this delivery
      const deliveryTonKm = (deliveryTotalMass / 1000) * deliveryTotalDistance;

      return {
        date: delivery.date ? new Date(delivery.date).toISOString().split('T')[0] : null,
        locationDetail: delivery.outboundDistance?.location2
          ? {
              id: delivery.outboundDistance.location2.id,
              name: delivery.outboundDistance.location2.name,
            }
          : null,
        receiverDetail: delivery.receiver
          ? {
              id: delivery.receiver.id,
              firstname: delivery.receiver.firstname,
              lastname: delivery.receiver.lastname,
            }
          : null,
        tonKm: Math.round(deliveryTonKm * 100) / 100, // Round to 2 decimal places
        withLoadDistance: Math.round(outboundDistance * 100) / 100,
        withoutLoadDistance: Math.round(returnDistance * 100) / 100,
        fuelTypeDetail: Array.from(deliveryFuelTypes.values()),
        details: [
          {
            truck: Array.from(trucksMap.values())[0] || null, // Assuming one main truck per delivery
            trailers: Array.from(trailersMap.values()),
          },
        ],
      };
    });

    // Convert fuel type map to array and clean up averages
    const totalFuelTypeDetail = Array.from(fuelTypeMap.values()).map((ft) => ({
      id: ft.id,
      name: ft.name,
      volume: Math.round(ft.volume * 100) / 100,
      averageDensity: Math.round(ft.averageDensity * 1000) / 1000, // Round to 3 decimal places
    }));

    // Prepare final response
    const reportData = {
      totalMass: Math.round(totalMass * 100) / 100,
      totalTonKm: Math.round(totalTonKm * 100) / 100,
      totalVolume: Math.round(totalVolume * 100) / 100,
      totalDistance: Math.round(totalDistance * 100) / 100,
      totalWithLoadDistance: Math.round(totalWithLoadDistance * 100) / 100,
      totalWithoutLoadDistance: Math.round(totalWithoutLoadDistance * 100) / 100,
      totalFuelTypeDetail,
      deliveries: processedDeliveries,
    };

    res.send({
      success: true,
      message: `Report generated successfully for period ${startDate} to ${endDate}`,
      data: reportData,
      meta: {
        period: {
          startDate,
          endDate,
        },
        filters: {
          driverId: driverId || null,
          truckId: truckId || null,
        },
        totalDeliveries: deliveries.length,
        generatedAt: new Date().toISOString(),
      },
    });
  } catch (error) {
    // Log error for debugging (consider using proper logging service)
    if (process.env.NODE_ENV === 'development') {
      // eslint-disable-next-line no-console
      console.error('Error generating report:', error);
    }
    res.status(500).send({
      success: false,
      message: 'Internal server error while generating report',
      error: process.env.NODE_ENV === 'development' ? error.message : undefined,
    });
  }
});

module.exports = { getReport };
