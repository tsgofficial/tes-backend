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
      daily_delivery_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      driver_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      trailer_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      from_location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      from_distance_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      manager_status_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 5,
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
    Deliveries.belongsTo(models.drivers, {
      foreignKey: 'driver_id',
      as: 'driver',
    });
    Deliveries.belongsTo(models.trailers, {
      foreignKey: 'trailer_id',
      as: 'trailer',
    });
    Deliveries.hasMany(models.delivery_details, {
      foreignKey: 'delivery_id',
      as: 'deliveryDetails',
    });
    Deliveries.belongsTo(models.fuel_location_distances, {
      foreignKey: 'from_distance_id',
      as: 'fromDistance',
    });
    Deliveries.belongsTo(models.fuel_locations, {
      foreignKey: 'from_location_id',
      as: 'fromLocation',
    });
    Deliveries.belongsTo(models.daily_deliveries, {
      foreignKey: 'daily_delivery_id',
      as: 'dailyDelivery',
    });
    Deliveries.belongsTo(models.manager_status, {
      foreignKey: 'manager_status_id',
      as: 'managerStatus',
    });
  };

  return Deliveries;
};
