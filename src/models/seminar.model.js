module.exports = (sequelize, Sequelize, DataTypes) => {
  const Seminars = sequelize.define(
    'Seminars',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      type: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      coordinates: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      seminar_date: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW,
      },
    },
    {
      tableName: 'seminar',
      timestamps: false,
    }
  );
  Seminars.associate = function (models) {
    Seminars.belongsTo(models.seminarTypes, {
      foreignKey: 'type',
      as: 'seminarType',
    });
  };

  return Seminars;
};
