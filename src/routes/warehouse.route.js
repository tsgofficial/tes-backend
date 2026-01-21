const express = require('express');
const { getWarehouseDetails, updateWarehouse, createWarehouse } = require('../controllers/warehouse.controller');

const router = express.Router();

router.route('/').get(getWarehouseDetails).put(updateWarehouse).post(createWarehouse);

module.exports = router;
