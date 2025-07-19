const express = require('express');
const {
  getSurvey,
  addSurvey,
  surveyDetails,
  surveyDelete,
  editSurvey,
  activeSurvey,
  // reportSurvey,
  reportChildSurvey,
  childSurvey,
} = require('../controllers/survey.controller');
const { protect } = require('../middlewares/auth');

const router = express.Router();
router.route('/').post(protect, addSurvey).get(protect, getSurvey);
router.route('/:id').get(protect, surveyDetails);
router.route('/:id').delete(protect, surveyDelete);
router.route('/edit/:id').post(protect, editSurvey);
router.route('/active/:id').post(protect, activeSurvey);
// router.route('/report/:id').get(protect, reportSurvey);
router.route('/report/:id/:childId').get(protect, reportChildSurvey);
router.route('/report/:id').get(protect, childSurvey);
module.exports = router;
