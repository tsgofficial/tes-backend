module.exports = (sequelize, Sequelize, DataTypes) => {
  const GroupType = sequelize.define(
    'GroupType',
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
    },
    {
      tableName: 'group_type',
      timestamps: false,
    }
  );
  GroupType.associate = function (models) {
    GroupType.hasMany(models.groups, {
      foreignKey: 'type',
      as: 'groupType',
    });
  };

  return GroupType;
};
