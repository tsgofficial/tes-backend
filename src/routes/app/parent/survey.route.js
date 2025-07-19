const express = require('express');
const { protectApp } = require('../../../middlewares/app_auth');
const { getSurvey, surveyDetail, surveySelect } = require('../../../controllers/app/parent/survey.controller');

const router = express.Router();

router.route('/').get(protectApp, getSurvey);
router.route('/:id').post(protectApp, surveySelect).get(protectApp, surveyDetail);

module.exports = router;
