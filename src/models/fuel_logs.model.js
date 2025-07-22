module.exports = function (sequelize, DataTypes) {
  const FuelLogs = sequelize.define(
    'fuel_logs',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      delivery_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      fuel_type_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      container_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      delivery_type: {
        type: DataTypes.ENUM('refueling', 'draining'),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'fuel_logs',
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

  FuelLogs.associate = (models) => {
    FuelLogs.belongsTo(models.deliveries, {
      foreignKey: 'delivery_id',
      as: 'delivery',
    });
    FuelLogs.belongsTo(models.fuel_types, {
      foreignKey: 'fuel_type_id',
      as: 'fuelType',
    });
    FuelLogs.belongsTo(models.containers, {
      foreignKey: 'container_id',
      as: 'container',
    });
  };

  return FuelLogs;
};
