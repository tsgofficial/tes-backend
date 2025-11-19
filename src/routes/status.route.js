const express = require('express');
const {
  getTruckStatuses,
  getLeaveStatuses,
  getManagerStatuses,
  putTruckStatus,
  putManagerStatus,
  putLeaveStatus,
} = require('../controllers/status.controller');

const router = express.Router();
router.put('/manager/:deliveryId', putManagerStatus);

router.get('/truck', getTruckStatuses);
router.get('/leave', getLeaveStatuses);
router.get('/manager', getManagerStatuses);

router.put('/truck/:truckId', putTruckStatus);
router.put('/leave/:dailyDeliveryId', putLeaveStatus);

module.exports = router;
