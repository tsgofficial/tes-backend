module.exports = function (sequelize, DataTypes) {
  const Reports = sequelize.define(
    'reports',
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
      tableName: 'reports',
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

  Reports.associate = function (models) {
    Reports.belongsTo(models.reportCategory, {
      foreignKey: 'category_id',
      as: 'category',
    });
    Reports.hasMany(models.reportSection, {
      foreignKey: 'report_id',
      as: 'sections',
    });
  };

  return Reports;
};
