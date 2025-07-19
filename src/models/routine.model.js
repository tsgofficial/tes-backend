module.exports = function (sequelize, DataTypes) {
  const Routine = sequelize.define(
    'routine',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      group_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
      },
      title: {
        type: DataTypes.STRING(255),
        allowNull: true,
        defaultValue: null,
      },
      start_time: {
        type: DataTypes.TIME, // Changed to TIME
        allowNull: true,
        defaultValue: null,
      },
      end_time: {
        type: DataTypes.TIME, // Changed to TIME
        allowNull: true,
        defaultValue: null,
      },
    },
    {
      sequelize,
      tableName: 'routine',
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

  return Routine;
};
