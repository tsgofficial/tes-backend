module.exports = function (sequelize, DataTypes) {
  const FuelLocations = sequelize.define(
    'fuel_locations',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      latitude: {
        type: DataTypes.FLOAT,
        allowNull: true,
      },
      longitude: {
        type: DataTypes.FLOAT,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'fuel_locations',
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

  FuelLocations.associate = (models) => {
    FuelLocations.hasMany(models.users, {
      foreignKey: 'location_id',
      as: 'users',
    });
  };

  return FuelLocations;
};
