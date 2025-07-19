const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getHome } = require('../../../controllers/app/teacher/home.controller');

const router = express.Router();
router.route('/').get(protectApp, getHome);

module.exports = router;
