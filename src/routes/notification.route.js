const express = require('express');
const { protect } = require('../middlewares/auth');
const { getNotifications } = require('../controllers/notification.controller');

const router = express.Router();

router.route('/').get(protect, getNotifications);

module.exports = router;
