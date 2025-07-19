const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getAttendance, createAttendance, getRequests } = require('../../../controllers/app/parent/attendance.controller');

const router = express.Router();

router.route('/').get(protectApp, getAttendance).post(protectApp, createAttendance);
router.route('/request').get(protectApp, getRequests);

module.exports = router;
