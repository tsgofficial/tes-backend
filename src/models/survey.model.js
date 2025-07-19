module.exports = function (sequelize, DataTypes) {
  const Survey = sequelize.define(
    'survey',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
      },
      group_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
      },
      is_active: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 1,
      },
      title: {
        type: DataTypes.STRING(500),
        allowNull: false,
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      created_by: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: sequelize.Sequelize.fn('current_timestamp'),
      },
      updated_date: {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: null,
      },
    },
    {
      sequelize,
      tableName: 'survey',
      timestamps: false,
    }
  );

  // Add the association with the Groups table
  Survey.associate = function (models) {
    Survey.belongsTo(models.groups, {
      foreignKey: 'group_id',
      as: 'group',
    });

    Survey.hasMany(models.surveySections, {
      foreignKey: 'survey_id',
      as: 'sections',
    });
  };

  return Survey;
};
