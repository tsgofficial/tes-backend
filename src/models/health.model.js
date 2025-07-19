module.exports = function (sequelize, DataTypes) {
  const Health = sequelize.define(
    'health',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      title: {
        type: DataTypes.STRING(255),
        allowNull: false,
        unique: 'name',
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: false,
      },
    },
    {
      sequelize,
      tableName: 'health',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
        {
          name: 'name',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'title' }],
        },
      ],
    }
  );

  return Health;
};
