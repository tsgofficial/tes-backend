module.exports = function (sequelize, DataTypes) {
  const Notification = sequelize.define(
    'Notification',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      title: {
        type: DataTypes.STRING(200),
        allowNull: true,
      },
      content: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: DataTypes.NOW,
      },
    },
    {
      sequelize,
      tableName: 'notifications',
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

  // Define any associations here if needed, for example:
  // Notification.associate = function (models) {
  //   Notification.belongsTo(models.User, { foreignKey: 'user_id', as: 'user' });
  // };

  return Notification;
};
