module.exports = (sequelize, Sequelize, DataTypes) => {
  const MenuRole = sequelize.define(
    'MenuRole',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      role_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      menus: {
        type: DataTypes.STRING,
        allowNull: true,
      },
    },
    {
      tableName: 'menu_role',
      timestamps: false,
    }
  );
  MenuRole.associate = function (models) {
    // console.log(models);
  };

  return MenuRole;
};
