const express = require('express');

const { getTrailers, createTrailer, editTrailer, deleteTrailer } = require('../controllers/trailer.controller');

const router = express.Router();

router.route('/').get(getTrailers).post(createTrailer);
router.route('/:id').put(editTrailer).delete(deleteTrailer);

module.exports = router;
