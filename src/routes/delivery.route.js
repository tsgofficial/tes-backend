const express = require('express');
const {
  getDeliveries,
  createDelivery,
  editDelivery,
  deleteDelivery,
  receiveDelivery,
  getDateDeliveries,
  postDailyDeliveryTrucks,
} = require('../controllers/delivery.controller');

const router = express.Router();

router.route('/').get(getDeliveries).post(createDelivery);
router.route('/:id').put(editDelivery).delete(deleteDelivery);
router.route('/:date').get(getDateDeliveries);

router.route('/receive/:id').post(receiveDelivery);
router.route('/daily').post(postDailyDeliveryTrucks);

module.exports = router;
