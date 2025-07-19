const express = require('express');
const { protect } = require('../middlewares/auth');
const {
  addPlan,
  getPlan,
  detailPlan,
  getCategory,
  actPlan,
  deletePlan,
  editPlan,
} = require('../controllers/plan.controller');

const router = express.Router();
router.route('/').post(protect, addPlan).get(protect, getPlan);
router.route('/category').get(protect, getCategory);
router.route('/:id/:action').patch(protect, actPlan);
router.route('/:id').delete(protect, deletePlan).get(protect, detailPlan).put(protect, editPlan);

module.exports = router;
