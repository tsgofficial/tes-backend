module.exports = function (sequelize, DataTypes) {
  const PlanSections = sequelize.define(
    'plan_section',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      plan_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      images: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      url: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'plan_section',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
      ],
    }
  );

  PlanSections.associate = function (models) {
    PlanSections.belongsTo(models.plans, {
      foreignKey: 'plan_id',
      as: 'sections',
    });
  };

  return PlanSections;
};
