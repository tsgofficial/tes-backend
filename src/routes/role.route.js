const express = require('express');
const { getRoles, addRole, editRole, deleteRole } = require('../controllers/role.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/').post(protect, addRole).get(protect, getRoles);
router.route('/:id').put(protect, editRole).delete(protect, deleteRole);

module.exports = router;
