const express = require('express');
const { protect } = require('../middlewares/auth');
const { addAttendance, getAttendance } = require('../controllers/attendance.controller');

const router = express.Router();

router.route('/').post(protect, addAttendance).get(protect, getAttendance);

module.exports = router;
