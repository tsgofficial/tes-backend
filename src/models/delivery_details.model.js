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
  };

  return DeliveryDetails;
};
