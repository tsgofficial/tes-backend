module.exports = function (sequelize, DataTypes) {
  const LeaveStatus = sequelize.define(
    'leave_status',
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
    },
    {
      sequelize,
      tableName: 'leave_status',
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

  LeaveStatus.associate = function (models) {
    LeaveStatus.hasMany(models.daily_deliveries, {
      foreignKey: 'leave_status_id',
      as: 'DailyDeliveries',
    });
  };

  return LeaveStatus;
};
