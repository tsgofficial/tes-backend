const express = require('express');
const { getFood, addFood, selectFood, listFood } = require('../controllers/food.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/').get(protect, getFood).post(protect, addFood);
router.route('/select').post(protect, selectFood);
router.route('/list').get(protect, listFood);
module.exports = router;
