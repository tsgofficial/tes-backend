const express = require('express');
const { getTrucks, createTruck, editTruck } = require('../controllers/truck.controller');

const router = express.Router();

router.route('/').get(getTrucks).post(createTruck);
router.route('/:id').put(editTruck);

module.exports = router;
