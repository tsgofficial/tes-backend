const express = require('express');
const {
  getFuelLocationDistances,
  createFuelLocationDistance,
  editFuelLocationDistance,
  deleteFuelLocationDistance,
} = require('../controllers/fuel_location_distance.controller');

const router = express.Router();

router.route('/').get(getFuelLocationDistances).post(createFuelLocationDistance);
router.route('/:id').put(editFuelLocationDistance).delete(deleteFuelLocationDistance);

module.exports = router;
