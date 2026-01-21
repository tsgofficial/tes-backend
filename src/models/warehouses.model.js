module.exports = function (sequelize, DataTypes) {
  const Warehouses = sequelize.define(
    'warehouses',
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
      user_id: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'warehouses',
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
  Warehouses.associate = function (models) {
    Warehouses.hasMany(models.warehouse_containers, { foreignKey: 'warehouse_id', as: 'containers' });
    Warehouses.belongsTo(models.users, { foreignKey: 'user_id', as: 'user' });
  };

  return Warehouses;
};
