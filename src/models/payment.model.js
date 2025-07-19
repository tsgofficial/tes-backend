module.exports = function (sequelize, DataTypes) {
  const Payment = sequelize.define(
    'payment',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      child_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      group_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      status: {
        type: DataTypes.ENUM('paid', 'pending'),
        allowNull: true,
        defaultValue: 'pending',
      },
      amount: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      payment_type: {
        type: DataTypes.ENUM('diet'),
        allowNull: true,
        defaultValue: 'diet',
      },
      payment_date: {
        type: DataTypes.STRING(20),
        allowNull: true,
      },
      description: {
        type: DataTypes.STRING(500),
        allowNull: true,
      },
      invoice_id: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      paid_date: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      created_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      updated_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'payment',
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

  Payment.associate = (models) => {
    Payment.belongsTo(models.child, { foreignKey: 'child_id', as: 'child' });
  };

  return Payment;
};
