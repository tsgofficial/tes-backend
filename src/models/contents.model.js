module.exports = function (sequelize, DataTypes) {
  const Contents = sequelize.define(
    'contents',
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
      title: {
        type: DataTypes.STRING(500),
        allowNull: false,
      },
      description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      type: {
        type: DataTypes.ENUM('draft', 'sent'),
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
    },
    {
      sequelize,
      tableName: 'contents',
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

  Contents.associate = function (models) {
    Contents.hasMany(models.contentSection, {
      foreignKey: 'content_id',
      as: 'sections',
    });
  };

  return Contents;
};
