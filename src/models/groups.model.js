module.exports = (sequelize, Sequelize, DataTypes) => {
  const Groups = sequelize.define(
    'Groups',
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
      type: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW,
      },
    },
    {
      tableName: 'groups',
      timestamps: false,
    }
  );
  Groups.associate = function (models) {
    Groups.hasMany(models.users, {
      foreignKey: 'group_id',
      as: 'userGroup',
    });
    Groups.hasMany(models.child, {
      foreignKey: 'group_id',
      as: 'childGroup',
    });
    Groups.belongsTo(models.groupType, {
      foreignKey: 'type',
      as: 'groupType',
    });
  };

  return Groups;
};
