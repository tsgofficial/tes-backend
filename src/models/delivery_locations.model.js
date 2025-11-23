module.exports = function (sequelize, DataTypes) {
  const DeliveryLocations = sequelize.define(
    'delivery_locations',
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
      location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'delivery_locations',
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

  DeliveryLocations.associate = (models) => {
    DeliveryLocations.belongsTo(models.deliveries, {
      foreignKey: 'delivery_id',
      as: 'delivery',
    });
    DeliveryLocations.belongsTo(models.fuel_locations, {
      foreignKey: 'location_id',
      as: 'location',
    });
  };

  return DeliveryLocations;
};
