module.exports = (sequelize, Sequelize, DataTypes) => {
  const SeminarTypes = sequelize.define(
    'SeminarTypes',
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
      tableName: 'seminar_type',
      timestamps: false,
    }
  );
  SeminarTypes.associate = function (models) {
    SeminarTypes.hasMany(models.seminars, {
      foreignKey: 'type',
      as: 'seminarType',
    });
  };

  return SeminarTypes;
};
