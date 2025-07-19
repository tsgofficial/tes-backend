const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getPayments, createInvoice, setPaid } = require('../../../controllers/app/parent/payment.controller');

const router = express.Router();
router.route('/').get(protectApp, getPayments);
router.route('/create_invoice').post(protectApp, createInvoice);
router.route('/set_paid').post(protectApp, setPaid);

module.exports = router;
