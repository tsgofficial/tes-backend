const express = require('express');
const { login, generateOtp, checkOtp, generatePassword } = require('../../../controllers/app/teacher/auth.controller');

const router = express.Router();
router.route('/login').post(login);
router.route('/generate-otp').post(generateOtp);
router.route('/check-otp').post(checkOtp);
router.route('/generate-password').post(generatePassword);

module.exports = router;
