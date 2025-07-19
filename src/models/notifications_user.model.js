module.exports = function (sequelize, DataTypes) {
  const NotificationsUser = sequelize.define(
    'NotificationsUser',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      notif_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      is_read: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: 0,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: DataTypes.NOW,
      },
    },
    {
      sequelize,
      tableName: 'notifications_user',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
        {
          name: 'receiver',
          using: 'BTREE',
          fields: [{ name: 'user_id' }],
        },
        {
          name: 'notification',
          using: 'BTREE',
          fields: [{ name: 'notif_id' }],
        },
      ],
    }
  );

  NotificationsUser.associate = function (models) {
    NotificationsUser.belongsTo(models.notification, {
      foreignKey: 'notif_id',
      as: 'notification',
    });

    NotificationsUser.belongsTo(models.users, {
      foreignKey: 'user_id',
      as: 'user',
    });
  };

  return NotificationsUser;
};
