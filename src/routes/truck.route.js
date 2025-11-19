const express = require('express');
const { fetchTrucks, createTruck, editTruck, deleteTruck } = require('../controllers/truck.controller');

const router = express.Router();

router.route('/').get(fetchTrucks).post(createTruck);
router.route('/:id').put(editTruck).delete(deleteTruck);

module.exports = router;
