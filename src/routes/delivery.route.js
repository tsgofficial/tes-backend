const express = require('express');
const {
  getDeliveries,
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
} = require('../controllers/delivery.controller');

const router = express.Router();

router.route('/').get(getDeliveries).post(createDelivery);
router.route('/:id').put(editDelivery).delete(deleteDelivery);
router.route('/:date').get(getDateDeliveries);

router.route('/receive/:id').post(receiveDelivery);

module.exports = router;
