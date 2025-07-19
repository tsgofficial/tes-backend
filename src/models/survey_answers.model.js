module.exports = function (sequelize, DataTypes) {
  const SurveyAnswers = sequelize.define(
    'survey_answers',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
      },
      question_id: {
        type: DataTypes.INTEGER,
        allowNull: true, // Make it nullable
        references: {
          model: 'survey_questions',
          key: 'id',
        },
      },
      title: {
        type: DataTypes.STRING(500), // Changed to match VARCHAR(500)
        allowNull: false,
      },
    },
    {
      sequelize,
      tableName: 'survey_answers',
      timestamps: false,
    }
  );

  SurveyAnswers.associate = function (models) {
    SurveyAnswers.belongsTo(models.surveyQuestions, {
      foreignKey: 'question_id',
      as: 'questions',
    });
  };

  return SurveyAnswers;
};
