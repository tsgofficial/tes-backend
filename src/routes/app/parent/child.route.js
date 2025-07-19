const express = require('express');
const { getChildren } = require('../../../controllers/app/parent/child.controller');
const { protectApp } = require('../../../middlewares/app_auth');

const router = express.Router();

router.route('/').get(protectApp, getChildren);

module.exports = router;
