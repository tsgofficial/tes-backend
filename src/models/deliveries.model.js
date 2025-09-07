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
      date: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      truck_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      driver_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      from_location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      to_location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      received_by: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      received_datetime: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      outbound_distance_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      return_distance_id: {
        type: DataTypes.INTEGER,
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
    Deliveries.hasMany(models.delivery_details, {
      foreignKey: 'delivery_id',
      as: 'deliveryDetails',
    });
    Deliveries.belongsTo(models.users, {
      foreignKey: 'received_by',
      as: 'receiver',
    });
    Deliveries.belongsTo(models.fuel_location_distances, {
      foreignKey: 'outbound_distance_id',
      as: 'outboundDistance',
    });
    Deliveries.belongsTo(models.fuel_location_distances, {
      foreignKey: 'return_distance_id',
      as: 'returnDistance',
    });
    Deliveries.belongsTo(models.fuel_locations, {
      foreignKey: 'from_location_id',
      as: 'fromLocation',
    });
    Deliveries.belongsTo(models.fuel_locations, {
      foreignKey: 'to_location_id',
      as: 'toLocation',
    });
  };

  return Deliveries;
};
