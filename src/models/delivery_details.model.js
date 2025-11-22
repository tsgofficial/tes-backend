module.exports = function (sequelize, DataTypes) {
  const DeliveryDetails = sequelize.define(
    'delivery_details',
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
      trailer_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
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
      density: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: true,
      },
      received_by: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      received_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      from_distance_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      inspector_status_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
      },
    },
    {
      sequelize,
      tableName: 'delivery_details',
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

  DeliveryDetails.associate = (models) => {
    DeliveryDetails.belongsTo(models.deliveries, {
      foreignKey: 'delivery_id',
      as: 'delivery',
    });
    DeliveryDetails.belongsTo(models.fuel_types, {
      foreignKey: 'fuel_type_id',
      as: 'fuelType',
    });
    DeliveryDetails.belongsTo(models.containers, {
      foreignKey: 'container_id',
      as: 'container',
    });
    DeliveryDetails.belongsTo(models.trucks, {
      foreignKey: 'truck_id',
      as: 'truck',
    });
    DeliveryDetails.belongsTo(models.trailers, {
      foreignKey: 'trailer_id',
      as: 'trailer',
    });
    DeliveryDetails.belongsTo(models.fuel_location_distances, {
      foreignKey: 'from_distance_id',
      as: 'fromDistance',
    });
    DeliveryDetails.belongsTo(models.users, {
      foreignKey: 'received_by',
      as: 'receiver',
    });
    DeliveryDetails.belongsTo(models.inspector_status, {
      foreignKey: 'inspector_status_id',
      as: 'inspectorStatus',
    });
  };

  return DeliveryDetails;
};
