const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getContent } = require('../../../controllers/app/parent/content.controller');

const router = express.Router();
router.route('/').get(protectApp, getContent);

module.exports = router;
