const express = require('express');
const { getDeliveries, createDelivery, editDelivery } = require('../controllers/delivery.controller');

const router = express.Router();

router.route('/').get(getDeliveries).post(createDelivery);
router.route('/:id').put(editDelivery);

module.exports = router;
