const express = require('express');
const { protect } = require('../middlewares/auth');
const { addContent, getContent } = require('../controllers/content.controller');

const router = express.Router();
router.route('/').post(protect, addContent).get(protect, getContent);

module.exports = router;
