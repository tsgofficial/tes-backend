const express = require('express');
const {
  groupList,
  groupAdd,
  groupDelete,
  groupEdit,
  userList,
  userAdd,
  userDelete,
  userEdit,
  parentList,
  parentAdd,
  parentEdit,
  parentDelete,
  childList,
  childAdd,
  childEdit,
  childDelete,
} = require('../controllers/account.controller');
const { protect } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const accountValidation = require('../validations/account.validation');

const router = express.Router();

router.route('/group-list').get(protect, groupList);
router.route('/group-add').post(protect, groupAdd);
router.route('/group-delete/:id').delete(protect, groupDelete);
router.route('/group-edit/:id').put(protect, groupEdit);
router.route('/user-list').get(protect, userList);
router.route('/user-add').post(protect, validate(accountValidation.userAdd), userAdd);
router.route('/user-delete/:id').delete(protect, userDelete);
router.route('/user-edit/:id').put(protect, userEdit);
router.route('/parent-list').get(protect, parentList);
router.route('/parent-add').post(protect, parentAdd);
router.route('/parent-edit/:id').put(protect, parentEdit);
router.route('/parent-delete/:id').delete(protect, parentDelete);
router.route('/child-list').get(protect, childList);
router.route('/child-add').post(protect, childAdd);
router.route('/child-edit/:id').put(protect, childEdit);
router.route('/child-delete/:id').delete(protect, childDelete);

module.exports = router;
