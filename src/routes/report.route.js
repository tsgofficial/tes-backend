const express = require('express');
const { getReport } = require('../controllers/report.controller');

const router = express.Router();

router.route('/').get(getReport);

module.exports = router;
