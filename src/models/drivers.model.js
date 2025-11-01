module.exports = function (sequelize, DataTypes) {
  const Drivers = sequelize.define(
    'drivers',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      lastname: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      firstname: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      position: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      register: {
        type: DataTypes.STRING(10),
        allowNull: true,
      },
      phone: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      truck_id: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'drivers',
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

  Drivers.associate = function (models) {
    Drivers.belongsTo(models.trucks, { foreignKey: 'truck_id', as: 'truck' });
  };

  return Drivers;
};
