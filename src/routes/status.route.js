const express = require('express');
const {
  getTruckStatuses,
  getLeaveStatuses,
  getManagerStatuses,
  getInspectorStatuses,
  putTruckStatus,
  putLeaveStatus,
  putManagerStatus,
  putInspectorStatus,
} = require('../controllers/status.controller');

const router = express.Router();

router.get('/truck', getTruckStatuses);
router.get('/leave', getLeaveStatuses);
router.get('/manager', getManagerStatuses);
router.get('/inspector', getInspectorStatuses);

router.put('/truck/:truckId', putTruckStatus);
router.put('/manager/:deliveryId', putManagerStatus);
router.put('/leave/:dailyDeliveryId', putLeaveStatus);
router.put('/inspector/:deliveryDetailId', putInspectorStatus);

module.exports = router;
