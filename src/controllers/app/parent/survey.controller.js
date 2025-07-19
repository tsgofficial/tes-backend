/* eslint-disable no-param-reassign */
const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Survey = db.survey;
const SurveySections = db.surveySections;
const SurveyQuestions = db.surveyQuestions;
const SurveyAnswers = db.surveyAnswers;
const SurveySelect = db.surveySelect;
const Children = db.child;

const getSurvey = catchAsync(async (req, res) => {
  const { childId } = req.query;
  const childRow = await Children.findOne({
    where: { id: childId },
    attributes: ['group_id'],
  });
  const surveys = await Survey.findAll({
    where: { group_id: childRow.group_id },
  });

  const formattedSurveys = surveys.map((survey) => ({
    surveyId: survey.id,
    surveyTitle: survey.title,
    surveyDescription: survey.description,
    createdBy: survey.created_by,
    createdAt: survey.created_date,
    updatedAt: survey.updated_date,
  }));

  res.send({
    success: true,
    message: 'Surveys fetched successfully',
    data: formattedSurveys,
  });
});

const surveyDetail = catchAsync(async (req, res) => {
  const { id } = req.params;
  const survey = await Survey.findOne({
    where: { id },
    include: [
      {
        model: SurveySections,
        as: 'sections',
        include: [
          {
            model: SurveyQuestions,
            as: 'questions',
            include: [
              {
                model: SurveyAnswers,
                as: 'answers',
              },
            ],
          },
        ],
      },
      {
        model: db.groups,
        as: 'group',
        attributes: ['name'],
      },
    ],
  });

  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }

  const formattedSurvey = {
    surveyId: survey.id,
    surveyTitle: survey.title,
    surveyDescription: survey.description,
    createdBy: survey.created_by,
    createdAt: survey.created_date,
    updatedAt: survey.updated_date,
    groupId: survey.group_id,
    groupName: survey.group ? survey.group.name : null,
    sections: survey.sections.map((section) => ({
      sectionId: section.id,
      sectionTitle: section.title,
      sectionDescription: section.description,
      questions: section.questions.map((question) => ({
        questionId: question.id,
        questionName: question.title,
        questionType: question.question_type,
        answerList: question.answers.map((answer) => ({
          answerId: answer.id,
          answerName: answer.title,
        })),
      })),
    })),
  };

  res.send({
    success: true,
    message: 'Survey fetched successfully',
    data: formattedSurvey,
  });
});

const surveySelect = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { childId } = req.query;
  const { questionList } = req.body;
  const survey = await Survey.findByPk(id);
  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }
  const surveySelects = questionList.map((question) => {
    const { answer } = question;
    return SurveySelect.create({
      question_id: question.id,
      answer,
      child_id: childId,
    });
  });

  const result = await Promise.all(surveySelects);
  if (!result) {
    return res.status(400).send({
      success: false,
      message: 'Survey select failed',
    });
  }
  res.send({
    success: true,
    message: 'Судалгаа амжилттай авагдлаа',
  });
});

module.exports = { getSurvey, surveyDetail, surveySelect };
