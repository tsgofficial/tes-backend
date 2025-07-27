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
        allowNull: false,
        defaultValue: 'truck',
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
  };

  return Trucks;
};
