module.exports = function (sequelize, DataTypes) {
  const TruckStatus = sequelize.define(
    'truck_status',
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
      color: {
        type: DataTypes.STRING(50),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'truck_status',
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

  TruckStatus.associate = function (models) {
    TruckStatus.hasMany(models.trucks, {
      foreignKey: 'status_id',
      as: 'trucks',
    });
  };

  return TruckStatus;
};
