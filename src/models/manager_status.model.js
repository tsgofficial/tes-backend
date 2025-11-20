module.exports = function (sequelize, DataTypes) {
  const ManagerStatus = sequelize.define(
    'manager_status',
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
      tableName: 'manager_status',
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

  ManagerStatus.associate = function (models) {
    ManagerStatus.hasMany(models.deliveries, {
      foreignKey: 'manager_status_id',
      as: 'deliveries',
    });
  };

  return ManagerStatus;
};
