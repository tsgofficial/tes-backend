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
  };

  return Warehouses;
};
