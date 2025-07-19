module.exports = (sequelize, DataTypes) => {
  const Child = sequelize.define(
    'Child',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.BIGINT,
        allowNull: false,
        primaryKey: true,
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      firstname: {
        type: DataTypes.STRING(64),
        allowNull: false,
      },
      lastname: {
        type: DataTypes.STRING(64),
        allowNull: true,
      },
      birthday: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      gender: {
        type: DataTypes.ENUM('male', 'female'),
        allowNull: true,
      },
      rd: {
        type: DataTypes.STRING(16),
        allowNull: true,
        unique: 'rd',
      },
      avatar: {
        type: DataTypes.STRING(200),
        allowNull: true,
      },
      address: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      group_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: sequelize.Sequelize.fn('current_timestamp'),
      },
      updated_date: {
        type: DataTypes.DATE,
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'child',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
        {
          name: 'rd',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'rd' }],
        },
        {
          name: 'kinder_id',
          using: 'BTREE',
          fields: [{ name: 'kinder_id' }],
        },
        {
          name: 'group_id',
          using: 'BTREE',
          fields: [{ name: 'group_id' }],
        },
      ],
    }
  );

  Child.associate = function (models) {
    Child.belongsTo(models.kinders, {
      foreignKey: 'kinder_id',
      as: 'childKinders',
    });
    Child.belongsTo(models.groups, {
      foreignKey: 'group_id',
      as: 'childGroup',
    });
    Child.hasMany(models.attendance, {
      foreignKey: 'child_id',
      asL: 'child',
    });
    Child.belongsTo(models.users, {
      foreignKey: 'user_id',
      as: 'parent',
    });
  };

  return Child;
};
