const express = require('express');
const {
  fetchTrucks,
  createTruck,
  editTruck,
  deleteTruck,
  fetchDailyTrucks,
  postDailyTrucks,
} = require('../controllers/truck.controller');

const router = express.Router();

router.route('/').get(fetchTrucks).post(createTruck);
router.route('/:id').put(editTruck).delete(deleteTruck);
router.route('/daily').get(fetchDailyTrucks).post(postDailyTrucks);

module.exports = router;
