module.exports = function (sequelize, DataTypes) {
  const FuelLocationDistances = sequelize.define(
    'fuel_location_distances',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      location_id_1: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      location_id_2: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      distance: {
        type: DataTypes.DOUBLE,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'fuel_location_distances',
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

  FuelLocationDistances.associate = (models) => {
    FuelLocationDistances.belongsTo(models.fuel_locations, {
      foreignKey: 'location_id_1',
      as: 'location1',
    });
    FuelLocationDistances.belongsTo(models.fuel_locations, {
      foreignKey: 'location_id_2',
      as: 'location2',
    });
    FuelLocationDistances.hasMany(models.deliveries, {
      foreignKey: 'to_distance_id',
      as: 'toDeliveries',
    });
    FuelLocationDistances.hasMany(models.delivery_details, {
      foreignKey: 'from_distance_id',
      as: 'fromDeliveries',
    });
  };

  return FuelLocationDistances;
};
