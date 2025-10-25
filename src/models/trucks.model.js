module.exports = function (sequelize, DataTypes) {
  const Trucks = sequelize.define(
    'trucks',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      license_plate: {
        type: DataTypes.STRING(7),
        allowNull: true,
      },
      tire_wear: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      last_battery_changed_at: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      last_inspected_at: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      driver_id: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'trucks',
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

  Trucks.associate = function (models) {
    Trucks.hasMany(models.containers, {
      foreignKey: 'truck_id',
      as: 'containers',
    });
    Trucks.hasMany(models.deliveries, {
      foreignKey: 'truck_id',
      as: 'deliveries',
    });
    Trucks.hasMany(models.delivery_details, {
      foreignKey: 'truck_id',
      as: 'deliveryDetails',
    });
    Trucks.belongsTo(models.drivers, {
      foreignKey: 'driver_id',
      as: 'driver',
    });
    Trucks.hasOne(models.trailers, {
      foreignKey: 'truck_id',
      as: 'trailer',
    });
  };

  return Trucks;
};
