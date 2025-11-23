const express = require('express');
const {
  fetchTrucks,
  createTruck,
  editTruck,
  deleteTruck,
  postDailyTrucks,
  getReadyTrucks,
} = require('../controllers/truck.controller');

const router = express.Router();

router.route('/').get(fetchTrucks).post(createTruck);
router.route('/:id').put(editTruck).delete(deleteTruck);
router.route('/ready').get(getReadyTrucks);
router.route('/daily').post(postDailyTrucks);

module.exports = router;
