module.exports = function (sequelize, DataTypes) {
  const Plans = sequelize.define(
    'plans',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      kinder_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      category_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      content_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
      },
      title: {
        type: DataTypes.STRING(500),
        allowNull: false,
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      type: {
        type: DataTypes.ENUM('draft', 'sent', 'approved', 'rejected'),
        allowNull: true,
        defaultValue: 'draft',
      },
      start_date: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      end_date: {
        type: DataTypes.DATEONLY,
        allowNull: true,
      },
      created_date: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: sequelize.Sequelize.fn('current_timestamp'),
      },
      file: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      file_name: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      mimetype: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'plans',
      timestamps: false,
      indexes: [
        {
          name: 'PRIMARY',
          unique: true,
          using: 'BTREE',
          fields: [{ name: 'id' }],
        },
        {
          name: 'date_from',
          using: 'BTREE',
          fields: [{ name: 'start_date' }],
        },
        {
          name: 'date_until',
          using: 'BTREE',
          fields: [{ name: 'end_date' }],
        },
      ],
    }
  );

  Plans.associate = function (models) {
    Plans.belongsTo(models.planCategory, {
      foreignKey: 'category_id',
      as: 'category',
    });
    Plans.hasMany(models.planSection, {
      foreignKey: 'plan_id',
      as: 'sections',
    });
  };

  return Plans;
};
