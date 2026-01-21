module.exports = function (sequelize, DataTypes) {
  const Orders = sequelize.define(
    'orders',
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
      status: {
        type: DataTypes.ENUM('ordered', 'shipped', 'coming', 'came'),
        allowNull: true,
        defaultValue: 'ordered',
      },
    },
    {
      sequelize,
      tableName: 'orders',
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

  Orders.associate = function (models) {
    Orders.hasMany(models.order_details, {
      foreignKey: 'order_id',
      as: 'details',
    });
  };

  return Orders;
};
