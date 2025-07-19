const express = require('express');
const { getFood, detailFood } = require('../../../controllers/app/teacher/food.controller');
const { protectApp } = require('../../../middlewares/app_auth');

const router = express.Router();
router.route('/').get(protectApp, getFood);
router.route('/:id').get(protectApp, detailFood);

module.exports = router;
