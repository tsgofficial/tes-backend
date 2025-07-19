const express = require('express');
const { getPayments, createInvoice, deleteInvoice, editInvoice } = require('../controllers/payment.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/').get(protect, getPayments);
router.route('/invoice').post(protect, createInvoice);
router.route('/invoice/:id').delete(protect, deleteInvoice).put(protect, editInvoice);
module.exports = router;
