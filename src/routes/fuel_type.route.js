const express = require('express');
const { getFuelTypes } = require('../controllers/fuel_type.controller');

const router = express.Router();

router.route('/').get(getFuelTypes);

module.exports = router;
