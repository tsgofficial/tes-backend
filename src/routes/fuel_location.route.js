const express = require('express');
const {
  getFuelLocations,
  createFuelLocation,
  editFuelLocation,
  deleteFuelLocation,
} = require('../controllers/fuel_location.controller');

const router = express.Router();

router.route('/').get(getFuelLocations).post(createFuelLocation);
router.route('/:id').put(editFuelLocation).delete(deleteFuelLocation);

module.exports = router;
