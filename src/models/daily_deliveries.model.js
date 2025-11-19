module.exports = function (sequelize, DataTypes) {
  const DailyDeliveries = sequelize.define(
    'daily_deliveries',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      date: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      truck_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      leave_status_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      admin_status: {
        type: DataTypes.ENUM(
          'ready',
          'pending',
          'on_delivery',
          'need_service',
          'driver_absent',
          'driver_sick',
          'has_license_problem',
          'wont_deliver'
        ),
        allowNull: true,
        defaultValue: 'ready',
      },
    },
    {
      sequelize,
      tableName: 'daily_deliveries',
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

  DailyDeliveries.associate = function (models) {
    DailyDeliveries.belongsTo(models.trucks, {
      foreignKey: 'truck_id',
      as: 'truck',
    });
    DailyDeliveries.hasMany(models.deliveries, {
      foreignKey: 'daily_delivery_id',
      as: 'deliveries',
    });
    DailyDeliveries.belongsTo(models.leave_status, {
      foreignKey: 'leave_status_id',
      as: 'leaveStatus',
    });
  };

  return DailyDeliveries;
};
