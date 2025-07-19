const express = require('express');
const { getFood } = require('../../../controllers/app/teacher/food.controller');
const { protectApp } = require('../../../middlewares/app_auth');

const router = express.Router();
router.route('/').get(protectApp, getFood);

module.exports = router;
