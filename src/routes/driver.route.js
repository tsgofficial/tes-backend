const express = require('express');
const { getDrivers, createDriver, editDriver } = require('../controllers/driver.controller');

const router = express.Router();

router.route('/').get(getDrivers).post(createDriver);
router.route('/:id').put(editDriver);

module.exports = router;
