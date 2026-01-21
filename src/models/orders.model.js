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
      status: {
        type: DataTypes.ENUM('ordered', 'shipped', 'coming', 'came'),
        allowNull: true,
        defaultValue: 'ordered',
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
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
    Orders.belongsTo(models.users, { foreignKey: 'user_id', as: 'user' });
  };

  return Orders;
};
