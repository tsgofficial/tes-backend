module.exports = function (sequelize, DataTypes) {
  const SurveySelect = sequelize.define(
    'survey_select',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
      },
      question_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: {
          model: 'survey_questions',
          key: 'id',
        },
      },
      answer: {
        type: DataTypes.STRING(500),
        allowNull: true,
        references: {
          model: 'survey_answers',
          key: 'id',
        },
      },
      child_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: {
          model: 'Child',
          key: 'id',
        },
      },
    },
    {
      sequelize,
      tableName: 'survey_select',
      timestamps: false,
    }
  );

  SurveySelect.associate = function (models) {
    SurveySelect.belongsTo(models.surveyQuestions, {
      foreignKey: 'question_id',
      as: 'questions',
    });
    SurveySelect.belongsTo(models.child, {
      foreignKey: 'child_id',
      as: 'child',
    });
    SurveySelect.belongsTo(models.surveyAnswers, {
      foreignKey: 'answer',
      as: 'answers',
    });
  };

  return SurveySelect;
};
