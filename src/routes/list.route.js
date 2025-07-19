const express = require('express');
const {
  getGroups,
  getRoles,
  getGroupTypes,
  getTeachers,
  getParents,
  getContentCategories,
  getSubTeachers,
} = require('../controllers/list.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/groups').get(protect, getGroups);
router.route('/roles').get(protect, getRoles);
router.route('/group-types').get(getGroupTypes);
router.route('/teachers').get(protect, getTeachers);
router.route('/sub-teachers').get(protect, getSubTeachers);
router.route('/parents').get(protect, getParents);
router.route('/content-categories').get(protect, getContentCategories);
module.exports = router;
