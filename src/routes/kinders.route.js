const express = require('express');
const { getKinders } = require('../controllers/kinders.controller');
// const auth = require('../middlewares/auth');

const router = express.Router();

router.route('/').get(getKinders);

module.exports = router;
