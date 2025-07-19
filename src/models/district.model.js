module.exports = (sequelize, Sequelize, DataTypes) => {
  const Districts = sequelize.define(
    'District',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      city_id: {
        type: DataTypes.STRING,
        allowNull: false,
      },
    },
    {
      tableName: 'district',
      timestamps: false,
    }
  );

  return Districts;
};
