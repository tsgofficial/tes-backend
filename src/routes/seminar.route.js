const express = require('express');
const { getSeminar, addSeminar, editSeminar, deleteSeminar } = require('../controllers/seminar.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();

router.route('/').post(protect, addSeminar);
router.route('/:id').put(protect, editSeminar).delete(protect, deleteSeminar).get(protect, getSeminar);

module.exports = router;
