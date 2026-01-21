module.exports = function (sequelize, DataTypes) {
  const OrderDetails = sequelize.define(
    'order_details',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      order_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      volume: {
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
      tableName: 'order_details',
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

  OrderDetails.associate = function (models) {
    OrderDetails.belongsTo(models.orders, {
      foreignKey: 'order_id',
      as: 'order',
    });
  };

  return OrderDetails;
};
