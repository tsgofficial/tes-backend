module.exports = function (sequelize, DataTypes) {
  const Trailers = sequelize.define(
    'trailers',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      license_plate: {
        type: DataTypes.STRING(6),
        allowNull: true,
      },
      truck_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'trailers',
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

  Trailers.associate = function (models) {
    Trailers.belongsTo(models.trucks, {
      foreignKey: 'truck_id',
      as: 'truck',
    });
    Trailers.hasMany(models.containers, {
      foreignKey: 'trailer_id',
      as: 'containers',
    });
  };

  return Trailers;
};
