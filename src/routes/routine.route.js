const express = require('express');
const { protect } = require('../middlewares/auth');
const { getRoutine, addRoutine, editRoutine, deleteRoutine } = require('../controllers/routine.controller');

const router = express.Router();

router.route('/').get(protect, getRoutine);
router.route('/').post(protect, addRoutine);
router.route('/edit').post(protect, editRoutine);
router.route('/delete/:id').delete(protect, deleteRoutine);

module.exports = router;
