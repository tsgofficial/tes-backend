module.exports = function (sequelize, DataTypes) {
  const Volumes = sequelize.define(
    'volumes',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      value: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'volumes',
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

  Volumes.associate = function (models) {
    Volumes.hasMany(models.containers, {
      foreignKey: 'volume_id',
      as: 'volumeContainers',
    });
  };

  return Volumes;
};
