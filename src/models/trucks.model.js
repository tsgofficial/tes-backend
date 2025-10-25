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
      type: {
        type: DataTypes.ENUM('truck', 'trailer'),
        allowNull: true,
        defaultValue: 'truck',
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
      trailer_id: {
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
      as: 'truckContainers',
    });
    Trucks.hasMany(models.deliveries, {
      foreignKey: 'truck_id',
      as: 'truckDeliveries',
    });
    Trucks.hasMany(models.delivery_details, {
      foreignKey: 'truck_id',
      as: 'truckDeliveryDetails',
    });
    // Trucks.belongsTo(models.drivers, {
    //   foreignKey: 'truck_id',
    //   as: 'truckDriver',
    // });

    Trucks.belongsTo(Trucks, {
      foreignKey: 'trailer_id',
      sourceKey: 'id',
      as: 'trailerTruck', // This is the truck that acts as the trailer.
    });

    Trucks.hasOne(Trucks, {
      foreignKey: 'id',
      targetKey: 'trailer_id',
      as: 'attachedTrailer', // This is the trailer attached to the truck.
    });
  };

  return Trucks;
};
