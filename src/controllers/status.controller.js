const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Trucks = db.trucks;
const Deliveries = db.deliveries;
const DailyDeliveries = db.daily_deliveries;

const TruckStatus = db.truck_status;
const LeaveStatus = db.leave_status;
const ManagerStatus = db.manager_status;

const getTruckStatuses = catchAsync(async (req, res) => {
  const statuses = await TruckStatus.findAll({
    raw: true,
  });

  res.send({
    success: true,
    message: 'Fetched truck statuses successfully',
    data: statuses,
  });
});

const getLeaveStatuses = catchAsync(async (req, res) => {
  const statuses = await LeaveStatus.findAll({
    raw: true,
  });

  res.send({
    success: true,
    message: 'Fetched leave statuses successfully',
    data: statuses,
  });
});

const getManagerStatuses = catchAsync(async (req, res) => {
  const statuses = await ManagerStatus.findAll({
    raw: true,
  });

  res.send({
    success: true,
    message: 'Fetched manager statuses successfully',
    data: statuses,
  });
});

const putTruckStatus = catchAsync(async (req, res) => {
  const { truckId } = req.params;
  const { statusId } = req.body;

  if (!truckId || !statusId) {
    return res.status(400).send({
      success: false,
      message: 'truckId and statusId are required',
    });
  }

  const truck = await Trucks.findByPk(truckId);
  if (!truck) {
    return res.status(404).send({
      success: false,
      message: 'Truck not found',
    });
  }

  truck.status_id = statusId;
  await truck.save();

  res.send({
    success: true,
    message: 'Truck status updated successfully',
    data: truck,
  });
});

const putManagerStatus = catchAsync(async (req, res) => {
  const { deliveryId } = req.params;
  const { statusId } = req.body;

  if (!deliveryId || !statusId) {
    return res.status(400).send({
      success: false,
      message: 'deliveryId and statusId are required',
    });
  }

  const delivery = await Deliveries.findByPk(deliveryId);
  if (!delivery) {
    return res.status(404).send({
      success: false,
      message: 'Delivery not found',
    });
  }

  delivery.manager_status_id = statusId;
  await delivery.save();

  res.send({
    success: true,
    message: 'Manager status updated successfully',
    data: delivery,
  });
});

const putLeaveStatus = catchAsync(async (req, res) => {
  const { dailyDeliveryId } = req.params;
  const { statusId } = req.body;

  if (!dailyDeliveryId || !statusId) {
    return res.status(400).send({
      success: false,
      message: 'leaveId and statusId are required',
    });
  }

  const dailyDelivery = await DailyDeliveries.findByPk(dailyDeliveryId);
  if (!dailyDelivery) {
    return res.status(404).send({
      success: false,
      message: 'Daily delivery not found',
    });
  }

  dailyDelivery.leave_status_id = statusId;
  await dailyDelivery.save();

  res.send({
    success: true,
    message: 'Leave status updated successfully',
    data: dailyDelivery,
  });
});

module.exports = {
  getTruckStatuses,
  getLeaveStatuses,
  getManagerStatuses,
  putTruckStatus,
  putManagerStatus,
  putLeaveStatus,
};
