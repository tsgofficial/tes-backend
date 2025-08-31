const express = require('express');
const {
  getDeliveries,
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
} = require('../controllers/delivery.controller');

const router = express.Router();

router.route('/').get(getDeliveries).post(createDelivery);
router.route('/:id').put(editDelivery).delete(deleteDelivery);

router.route('/receive/:id').post(receiveDelivery);

module.exports = router;
