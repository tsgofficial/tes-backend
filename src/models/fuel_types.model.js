module.exports = function (sequelize, DataTypes) {
  const FuelType = sequelize.define(
    'fuel_types',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(11),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'fuel_types',
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

  FuelType.associate = (models) => {
    FuelType.hasMany(models.fuel_logs, {
      foreignKey: 'fuel_type_id',
      as: 'fuelLogs',
    });
  };

  return FuelType;
};
