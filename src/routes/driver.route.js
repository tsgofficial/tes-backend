const express = require('express');
const { getDrivers, createDriver, editDriver, deleteDriver } = require('../controllers/driver.controller');

const router = express.Router();

router.route('/').get(getDrivers).post(createDriver);
router.route('/:id').put(editDriver).delete(deleteDriver);

module.exports = router;
