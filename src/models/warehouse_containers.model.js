module.exports = function (sequelize, DataTypes) {
  const WarehouseContainers = sequelize.define(
    'warehouse_containers',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      warehouse_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      volume: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      current_volume: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      fuel_type_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'warehouse_containers',
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

  WarehouseContainers.associate = function (models) {
    WarehouseContainers.belongsTo(models.warehouses, { foreignKey: 'warehouse_id', as: 'warehouse' });
    WarehouseContainers.belongsTo(models.fuel_types, { foreignKey: 'fuel_type_id', as: 'fuel_type' });
  };

  return WarehouseContainers;
};
