const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Survey = db.survey;
const SurveySections = db.surveySections;
const SurveyQuestions = db.surveyQuestions;
const SurveyAnswers = db.surveyAnswers;
const SurveySelect = db.surveySelect;
const Child = db.child;

const getSurvey = catchAsync(async (req, res) => {
  const surveys = await Survey.findAll({
    where: { kinder_id: req.kinderId },
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

  const formattedSurveys = surveys.map((survey) => ({
    surveyId: survey.id,
    surveyTitle: survey.title,
    surveyDescription: survey.description,
    createdBy: survey.created_by,
    createdAt: survey.created_date,
    updatedAt: survey.updated_date,
    groupId: survey.group_id,
    groupName: survey.group ? survey.group.name : null,
    isActive: survey.is_active,
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
  }));

  res.send({
    success: true,
    message: 'Surveys fetched successfully',
    data: formattedSurveys,
  });
});

const addSurvey = catchAsync(async (req, res) => {
  const { surveyTitle, surveyDescription, sections } = req.body;

  const survey = await Survey.create({
    title: surveyTitle,
    description: surveyDescription,
    kinder_id: req.kinderId,
    group_id: req.groupId,
  });

  const sectionPromises = sections.map(async (section) => {
    const { sectionTitle, sectionDescription, questions } = section;

    const newSection = await SurveySections.create({
      survey_id: survey.id,
      title: sectionTitle,
      description: sectionDescription,
    });

    const questionPromises = questions.map(async (question) => {
      const { questionName, questionType, answerList } = question;

      const newQuestion = await SurveyQuestions.create({
        section_id: newSection.id,
        title: questionName,
        question_type: questionType,
      });

      const answerPromises = answerList.map((answer) => {
        const { answerName } = answer;

        return SurveyAnswers.create({
          question_id: newQuestion.id,
          title: answerName,
        });
      });

      return Promise.all(answerPromises);
    });

    return Promise.all(questionPromises);
  });

  await Promise.all(sectionPromises);

  res.send({
    success: true,
    message: 'Судалгаа амжиллй үүслээ',
  });
});

const surveyDetails = catchAsync(async (req, res) => {
  const { id } = req.params;
  const survey = await Survey.findOne({
    where: { id, kinder_id: req.kinderId },
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

const surveyDelete = catchAsync(async (req, res) => {
  const { id } = req.params;

  const survey = await Survey.findOne({
    where: { id, kinder_id: req.kinderId },
  });

  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }

  const sections = await SurveySections.findAll({
    where: { survey_id: survey.id },
  });

  const sectionDeletionPromises = sections.map(async (section) => {
    const questions = await SurveyQuestions.findAll({
      where: { section_id: section.id },
    });

    const questionDeletionPromises = questions.map(async (question) => {
      // Delete all answers associated with the question
      await SurveyAnswers.destroy({
        where: { question_id: question.id },
      });

      return SurveyQuestions.destroy({
        where: { id: question.id },
      });
    });

    await Promise.all(questionDeletionPromises);

    return SurveySections.destroy({
      where: { id: section.id },
    });
  });

  await Promise.all(sectionDeletionPromises);

  await Survey.destroy({
    where: { id },
  });

  res.send({
    success: true,
    message: 'Survey deleted successfully',
  });
});

const editSurvey = catchAsync(async (req, res) => {
  const { surveyTitle, surveyDescription, sections } = req.body;
  const { id } = req.params;

  // Fetch the current survey with all sections, questions, and answers
  const survey = await Survey.findByPk(id, {
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
    ],
  });

  if (!survey) {
    return res.status(404).send({ success: false, message: 'Survey not found' });
  }

  // Update survey details
  await survey.update({
    title: surveyTitle,
    description: surveyDescription,
  });

  const existingSections = survey.sections || [];

  const sectionPromises = sections.map(async (section) => {
    const { sectionId, sectionTitle, sectionDescription, questions } = section;
    let dbSection = existingSections.find((sec) => sec.id === sectionId);

    if (!dbSection) {
      // Create a new section if it doesn't exist
      dbSection = await SurveySections.create({
        survey_id: survey.id,
        title: sectionTitle,
        description: sectionDescription,
      });
    } else {
      // Update the existing section if it has changed
      await dbSection.update({
        title: sectionTitle,
        description: sectionDescription,
      });
    }

    const existingQuestions = dbSection.questions || [];

    const questionPromises = questions.map(async (question) => {
      const { questionId, questionName, questionType, answerList } = question;
      let dbQuestion = existingQuestions.find((q) => q.id === questionId);

      if (!dbQuestion) {
        // Create a new question if it doesn't exist
        dbQuestion = await SurveyQuestions.create({
          section_id: dbSection.id,
          title: questionName,
          question_type: questionType,
        });
      } else {
        // Update the existing question if it has changed
        await dbQuestion.update({
          title: questionName,
          question_type: questionType,
        });
      }

      const existingAnswers = dbQuestion.answers || [];

      const answerPromises = answerList.map(async (answer) => {
        const { answerId, answerName } = answer;
        const dbAnswer = existingAnswers.find((ans) => ans.id === answerId);

        if (!dbAnswer) {
          // Create a new answer if it doesn't exist
          SurveyAnswers.create({
            question_id: dbQuestion.id,
            title: answerName,
          });
        } else {
          await dbAnswer.update({
            title: answerName,
          });
        }

        // No need to update answers as they don't have editable fields in this case
        return dbAnswer;
      });

      // Delete removed answers
      const answerIds = answerList.map((ans) => ans.answerId);
      const answersToDelete = existingAnswers.filter((dbAns) => !answerIds.includes(dbAns.id));
      await Promise.all(answersToDelete.map((answer) => answer.destroy()));

      return Promise.all(answerPromises);
    });

    // Delete removed questions
    const questionIds = questions.map((q) => q.questionId);
    const questionsToDelete = existingQuestions.filter((dbQ) => !questionIds.includes(dbQ.id));
    await Promise.all(questionsToDelete.map((question) => question.destroy()));

    return Promise.all(questionPromises);
  });

  // Delete removed sections
  const sectionIds = sections.map((s) => s.sectionId);
  const sectionsToDelete = existingSections.filter((dbSec) => !sectionIds.includes(dbSec.id));
  await Promise.all(sectionsToDelete.map((section) => section.destroy()));

  await Promise.all(sectionPromises);

  res.send({
    success: true,
    message: 'Судалгаа амжиллтай засагдлаа',
  });
});

const activeSurvey = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { isActive } = req.body;
  const survey = await Survey.findByPk(id, {
    where: { kinder_id: req.kinderId },
  });
  await survey.update({
    is_active: isActive,
  });
  res.send({
    success: true,
    message: `${isActive ? 'Судалгаа амжиллтай идэвхжүүллээ' : 'Судалгаа идэвхгүй болголоо'}`,
    data: survey,
  });
});

const reportSurvey = catchAsync(async (req, res) => {
  const { id } = req.params; // Survey ID
  // Fetch the survey details along with sections, questions, and answers
  const survey = await Survey.findOne({
    where: { id, kinder_id: req.kinderId }, // Use the survey ID and kinder ID
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
    ],
  });

  const allQuestions = survey.sections.flatMap((section) => section.questions.map((question) => question.id));
  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }

  const selectedAnswers = await SurveySelect.findAll({
    where: { question_id: allQuestions },
    include: [
      {
        model: SurveyQuestions,
        as: 'questions',
        include: [
          {
            model: SurveySections,
            as: 'sections',
          },
          {
            model: SurveyAnswers,
            as: 'answers',
          },
        ],
      },
      {
        model: Child,
        as: 'child',
        attributes: ['id', 'firstname'],
      },
    ],
  });

  const childrenReports = {};

  selectedAnswers.forEach((selection) => {
    const childId = selection?.child?.id;
    const childName = selection?.child?.firstname;

    // Initialize the child entry if it doesn't exist
    if (!childrenReports[childId]) {
      childrenReports[childId] = {
        childId,
        childName,
        sections: {},
      };
    }
    const sectionId = selection?.questions?.sections?.id;
    const sectionTitle = selection?.questions?.sections?.title;
    const questionId = selection?.question_id;
    const questionTitle = selection?.questions?.title;
    const questionType = selection?.questions?.question_type;

    let selectedAnswer;

    if (questionType === 'multiple' || questionType === 'single') {
      const answerIds = selection?.answer.split(',').map((answerId) => parseInt(answerId.trim(), 10));
      selectedAnswer = selection?.questions?.answers
        .filter((answer) => answerIds.includes(answer.id))
        .map((answer) => answer.title);
    } else {
      selectedAnswer = [selection?.answer];
    }

    if (!childrenReports[childId].sections[sectionId]) {
      childrenReports[childId].sections[sectionId] = {
        sectionId,
        sectionTitle,
        questions: {},
      };
    }

    childrenReports[childId].sections[sectionId].questions[questionId] = {
      questionId,
      questionTitle,
      questionType,
      selectedAnswer,
    };
  });

  res.send({
    success: true,
    message: 'Survey report generated successfully',
    data: Object.values(childrenReports), // Convert object to array
  });
});

const childSurvey = catchAsync(async (req, res) => {
  const { id } = req.params;
  const survey = await Survey.findOne({
    where: { id, kinder_id: req.kinderId },
    include: [
      {
        model: SurveySections,
        as: 'sections',
        include: [
          {
            model: SurveyQuestions,
            as: 'questions',
          },
        ],
      },
    ],
  });

  const allQuestions = survey.sections.flatMap((section) => section.questions.map((question) => question.id));
  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }

  const selectedAnswers = await SurveySelect.findAll({
    where: { question_id: allQuestions },
    include: [
      {
        model: Child,
        as: 'child',
        attributes: ['id', 'firstname'],
      },
    ],
  });

  const childrenReports = {};

  selectedAnswers.forEach((selection) => {
    const childId = selection?.child?.id;
    const childName = selection?.child?.firstname;

    if (!childrenReports[childId]) {
      childrenReports[childId] = {
        childId,
        childName,
      };
    }
  });

  res.send({
    success: true,
    message: 'Survey report generated successfully',
    data: Object.values(childrenReports), // Convert object to array
  });
});
const reportChildSurvey = catchAsync(async (req, res) => {
  const { id, childId } = req.params; // Survey ID and Child ID

  // Fetch the survey details along with sections, questions, and answers
  const survey = await Survey.findOne({
    where: { id, kinder_id: req.kinderId }, // Use the survey ID and kinder ID
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
    ],
  });

  if (!survey) {
    return res.status(404).send({
      success: false,
      message: 'Survey not found',
    });
  }

  // Fetch the selected answers for the specific child
  const selectedAnswers = await SurveySelect.findAll({
    where: { child_id: childId }, // Filter by childId
    include: [
      {
        model: SurveyQuestions,
        as: 'questions',
        include: [
          {
            model: SurveySections,
            as: 'sections',
          },
          {
            model: SurveyAnswers,
            as: 'answers',
          },
        ],
      },
      {
        model: Child,
        as: 'child',
        attributes: ['id', 'firstname'],
      },
    ],
  });

  if (selectedAnswers.length === 0) {
    return res.status(404).send({
      success: false,
      message: 'No answers found for this child',
    });
  }

  const childReport = {
    childId,
    childName: selectedAnswers[0]?.child?.firstname,
    sections: {},
  };

  selectedAnswers.forEach((selection) => {
    const sectionId = selection?.questions?.sections?.id;
    const sectionTitle = selection?.questions?.sections?.title;
    const questionId = selection?.question_id;
    const questionTitle = selection?.questions?.title;
    const questionType = selection?.questions?.question_type;

    let selectedAnswer;

    if (questionType === 'multiple' || questionType === 'single') {
      const answerIds = selection?.answer.split(',').map((answerId) => parseInt(answerId.trim(), 10));
      selectedAnswer = selection?.questions?.answers
        .filter((answer) => answerIds.includes(answer.id))
        .map((answer) => answer.title);
    } else {
      selectedAnswer = [selection?.answer];
    }

    if (!childReport.sections[sectionId]) {
      childReport.sections[sectionId] = {
        sectionId,
        sectionTitle,
        questions: {},
      };
    }

    childReport.sections[sectionId].questions[questionId] = {
      questionId,
      questionTitle,
      questionType,
      selectedAnswer,
    };
  });

  res.send({
    success: true,
    message: 'Child survey report generated successfully',
    data: childReport, // Send report for the specific child
  });
});

module.exports = {
  getSurvey,
  addSurvey,
  surveyDetails,
  surveyDelete,
  editSurvey,
  activeSurvey,
  reportSurvey,
  childSurvey,
  reportChildSurvey,
};
