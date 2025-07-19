const express = require('express');
const {
  addReport,
  getReport,
  getCategory,
  actReport,
  deleteReport,
  editReport,
  detailReport,
} = require('../controllers/report.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();
router.route('/').post(protect, addReport).get(protect, getReport);
router.route('/category').get(protect, getCategory);
router.route('/:id/:action').patch(protect, actReport);
router.route('/:id').delete(protect, deleteReport).get(protect, detailReport).put(protect, editReport);

module.exports = router;
