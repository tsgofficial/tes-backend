module.exports = (sequelize, Sequelize, DataTypes) => {
  const Roles = sequelize.define(
    'Roles',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      shortname: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
    },
    {
      tableName: 'roles',
      timestamps: false,
    }
  );
  Roles.associate = function (models) {
    Roles.hasMany(models.users, {
      foreignKey: 'group_id',
      as: 'userRole',
    });
  };

  return Roles;
};
