const express = require('express');
const { getUsers, createUsers, editUsers, deleteUsers } = require('../controllers/users.controller');

const router = express.Router();

router.route('/').get(getUsers).post(createUsers);
router.route('/:id').put(editUsers).delete(deleteUsers);

module.exports = router;
