module.exports = (sequelize, Sequelize, DataTypes) => {
  const Menu = sequelize.define(
    'Menu',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      title: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      type: {
        type: DataTypes.ENUM('group', 'collapse', 'item'),
        defaultValue: 'group',
        allowNull: true,
      },
      url: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      icon: {
        type: DataTypes.STRING,
        allowNull: true,
      },
    },
    {
      tableName: 'menu',
      timestamps: false,
    }
  );
  Menu.associate = function (models) {
    // console.log(models);
  };

  return Menu;
};
