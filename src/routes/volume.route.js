const express = require('express');
const { getVolumes, createVolume, deleteVolume, editVolume } = require('../controllers/volume.controller');

const router = express.Router();

router.route('/').get(getVolumes).post(createVolume);
router.route('/:id').put(editVolume).delete(deleteVolume);
module.exports = router;
