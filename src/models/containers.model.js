module.exports = function (sequelize, DataTypes) {
  const Containers = sequelize.define(
    'containers',
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
      volume: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'containers',
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

  Containers.associate = function (models) {
    Containers.belongsTo(models.trucks, {
      foreignKey: 'truck_id',
      as: 'containerTruck',
    });
    Containers.belongsTo(models.trailers, {
      foreignKey: 'trailer_id',
      as: 'containerTrailer',
    });
  };

  return Containers;
};
