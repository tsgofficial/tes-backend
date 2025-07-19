const express = require('express');
const { protect } = require('../middlewares/auth');
const { addHealth, getHealth } = require('../controllers/health.controller');

const router = express.Router();
router.route('/').post(protect, addHealth).get(protect, getHealth);

module.exports = router;
