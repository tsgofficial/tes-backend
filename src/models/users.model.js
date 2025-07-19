module.exports = (sequelize, Sequelize, DataTypes) => {
  const Users = sequelize.define(
    'User',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      phone: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      password: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      firstname: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      lastname: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      role_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      group_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      active: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
      },
      status: {
        type: DataTypes.ENUM('new', 'ok', 'expired'),
        allowNull: false,
        defaultValue: 'new',
      },
      sms_code: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      sms_code_expire: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      device_token: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW,
      },
      updated_date: {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: Sequelize.NOW,
      },
      logged_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW,
      },
    },
    {
      tableName: 'users',
      timestamps: false, // Disable automatic timestamp fields (createdAt, updatedAt)
    }
  );
  Users.associate = function (models) {
    Users.hasMany(models.child, {
      foreignKey: 'user_id',
      as: 'userChild',
    });
    Users.belongsTo(models.roles, {
      foreignKey: 'role_id',
      as: 'userRole',
    });
    Users.belongsTo(models.kinders, {
      foreignKey: 'kinder_id',
      as: 'userKinder',
    });
    Users.belongsTo(models.groups, {
      foreignKey: 'group_id',
      as: 'userGroup',
    });
  };
  return Users;
};
