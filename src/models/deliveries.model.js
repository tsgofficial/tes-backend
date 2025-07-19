module.exports = function (sequelize, DataTypes) {
  const Deliveries = sequelize.define(
    'deliveries',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      truck_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      driver_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      started_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      ended_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'deliveries',
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

  Deliveries.associate = (models) => {
    Deliveries.belongsTo(models.trucks, {
      foreignKey: 'truck_id',
      as: 'truck',
    });
    Deliveries.belongsTo(models.drivers, {
      foreignKey: 'driver_id',
      as: 'driver',
    });
    Deliveries.belongsTo(models.fuel_locations, {
      foreignKey: 'location_id',
      as: 'location',
    });
    Deliveries.hasMany(models.fuel_logs, {
      foreignKey: 'delivery_id',
      as: 'fuelLogs',
    });
  };

  return Deliveries;
};
