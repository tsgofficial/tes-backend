module.exports = function (sequelize, DataTypes) {
  const SurveyQuestions = sequelize.define(
    'survey_questions',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
      },
      section_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: {
          model: 'survey_sections',
          key: 'id',
        },
      },
      question_type: {
        type: DataTypes.ENUM('single', 'multiple', 'text'),
        allowNull: true,
        defaultValue: null,
      },
      title: {
        type: DataTypes.STRING(500),
        allowNull: false,
      },
    },
    {
      sequelize,
      tableName: 'survey_questions',
      timestamps: false,
    }
  );

  SurveyQuestions.associate = function (models) {
    SurveyQuestions.belongsTo(models.surveySections, {
      foreignKey: 'section_id',
      as: 'sections',
    });
    SurveyQuestions.hasMany(models.surveyAnswers, {
      foreignKey: 'question_id',
      as: 'answers',
    });
  };

  return SurveyQuestions;
};
