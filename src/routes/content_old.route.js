const express = require('express');
const { getContents } = require('../controllers/content_old.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/:type').get(protect, getContents);
module.exports = router;
