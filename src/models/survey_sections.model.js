module.exports = function (sequelize, DataTypes) {
  const SurveySections = sequelize.define(
    'survey_sections',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      survey_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      title: {
        type: DataTypes.STRING(500),
        allowNull: false,
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'survey_sections',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
        {
          name: 'survey_idx',
          using: 'BTREE',
          fields: [{ name: 'survey_id' }],
        },
      ],
    }
  );

  SurveySections.associate = function (models) {
    SurveySections.belongsTo(models.survey, {
      foreignKey: 'survey_id',
      as: 'survey',
    });
    SurveySections.hasMany(models.surveyQuestions, {
      foreignKey: 'section_id',
      as: 'questions',
    });
  };

  return SurveySections;
};
