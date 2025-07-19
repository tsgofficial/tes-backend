const express = require('express');
const { uploadTest } = require('../controllers/picture.controller');

const router = express.Router();
router.route('/').post(uploadTest);

module.exports = router;
