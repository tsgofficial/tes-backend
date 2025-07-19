module.exports = (sequelize, Sequelize, DataTypes) => {
  const Kinders = sequelize.define(
    'Kinders',
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
      phone: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      city_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      district_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      type: {
        type: DataTypes.INTEGER,
        allowNull: false,
        address: {
          type: DataTypes.STRING,
          allowNull: false,
        },
        email: {
          type: DataTypes.STRING,
          allowNull: false,
        },
      },
      is_active: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      registered_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW,
      },
    },
    {
      tableName: 'kinders',
      timestamps: false,
    }
  );
  Kinders.associate = function (models) {
    Kinders.belongsTo(models.city, {
      foreignKey: 'city_id',
      as: 'city',
    });
    Kinders.hasMany(models.users, {
      foreignKey: 'kinder_id',
      as: 'userKinder',
    });
    Kinders.hasMany(models.child, {
      foreignKey: 'kinder_id',
      as: 'childKinders',
    });
  };

  return Kinders;
};
