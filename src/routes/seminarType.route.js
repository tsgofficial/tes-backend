const express = require('express');
const { getType, addType, editType, deleteType } = require('../controllers/seminarType.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/').post(protect, addType).get(protect, getType);
router.route('/:id').put(protect, editType).delete(protect, deleteType);

module.exports = router;
