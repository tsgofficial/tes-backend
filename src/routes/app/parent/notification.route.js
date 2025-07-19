const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getNotifications } = require('../../../controllers/app/parent/notification.controller');

const router = express.Router();

router.route('/').get(protectApp, getNotifications);

module.exports = router;
