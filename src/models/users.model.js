module.exports = function (sequelize, DataTypes) {
  const Users = sequelize.define(
    'users',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      username: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      password: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      role: {
        type: DataTypes.ENUM('admin', 'manager', 'inspector'),
        allowNull: true,
        defaultValue: 'inspector',
      },
      location_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      firstname: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      lastname: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'users',
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

  Users.associate = (models) => {
    Users.belongsTo(models.fuel_locations, {
      foreignKey: 'location_id',
      as: 'location',
    });
    Users.hasMany(models.delivery_details, {
      foreignKey: 'received_by',
      as: 'receivedDeliveries',
    });
  };

  return Users;
};
