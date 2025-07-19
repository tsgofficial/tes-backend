const express = require('express');
const { addUser, getUser, getChild } = require('../controllers/user.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/:id').post(protect, addUser);
router.route('/').post(protect, addUser).get(protect, getUser);
router.route('/child').get(protect, getChild);
module.exports = router;
