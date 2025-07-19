module.exports = function (sequelize, DataTypes) {
  const ReportCategory = sequelize.define(
    'report_category',
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
    },
    {
      sequelize,
      tableName: 'report_category',
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

  ReportCategory.associate = function (models) {
    ReportCategory.hasMany(models.reports, {
      foreignKey: 'category_id',
      as: 'category',
    });
  };

  return ReportCategory;
};
