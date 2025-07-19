module.exports = function (sequelize, DataTypes) {
  const ContentSection = sequelize.define(
    'content_section',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      content_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      category_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      file: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      description: {
        type: DataTypes.STRING(500),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'content_section',
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

  ContentSection.associate = function (models) {
    ContentSection.belongsTo(models.contents, {
      foreignKey: 'content_id',
      as: 'sections',
    });
    ContentSection.belongsTo(models.contentCategory, {
      foreignKey: 'category_id',
      as: 'category',
    });
  };

  return ContentSection;
};
