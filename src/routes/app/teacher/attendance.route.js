const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getAttendance, updateAttendance, getChild } = require('../../../controllers/app/teacher/attendance.controller');

const router = express.Router();
router.route('/').get(protectApp, getAttendance).put(protectApp, updateAttendance);
router.route('/child/:childId').get(protectApp, getChild);
module.exports = router;
