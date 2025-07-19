const express = require('express');
const { getVolumes, createVolume } = require('../controllers/volume.controller');

const router = express.Router();

router.route('/').get(getVolumes).post(createVolume);
module.exports = router;
