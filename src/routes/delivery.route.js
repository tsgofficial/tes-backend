const express = require('express');
const {
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
  getDeliveryDetails,
} = require('../controllers/delivery.controller');

const router = express.Router();

router.route('/').get().post(createDelivery);
router.route('/:id').get(getDeliveryDetails).put(editDelivery).delete(deleteDelivery);
router.route('/:date').get(getDateDeliveries);

router.route('/receive/:id').post(receiveDelivery);

module.exports = router;
