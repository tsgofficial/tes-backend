const express = require('express');
const { fetchTrucksByStatus, fetchDeliveryDistanceVolume } = require('../controllers/home.controller');

const router = express.Router();

router.route('/total').get(fetchDeliveryDistanceVolume);
router.route('/trucks-by-status').get(fetchTrucksByStatus);

module.exports = router;
