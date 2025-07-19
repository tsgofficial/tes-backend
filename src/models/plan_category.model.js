module.exports = function (sequelize, DataTypes) {
  const PlanCategory = sequelize.define(
    'plan_category',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(64),
        allowNull: false,
      },
      dd: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
    },
    {
      sequelize,
      tableName: 'plan_category',
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

  PlanCategory.associate = function (models) {
    PlanCategory.hasMany(models.plans, {
      foreignKey: 'category_id',
      as: 'category',
    });
  };

  return PlanCategory;
};
