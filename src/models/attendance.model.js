module.exports = function (sequelize, DataTypes) {
  const Attendance = sequelize.define(
    'attendance',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      child_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
          model: 'child', // Make sure this matches the Child model's table name
          key: 'id',
        },
      },
      date: {
        type: DataTypes.DATEONLY,
        allowNull: false,
      },
      status: {
        type: DataTypes.ENUM,
        values: ['present', 'absent', 'sick', 'free'],
        allowNull: true,
      },
      request_description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      picture: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      created_at: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'attendance',
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

  Attendance.associate = function (models) {
    Attendance.belongsTo(models.child, { foreignKey: 'child_id', as: 'child' });
  };

  return Attendance;
};
