module.exports = function (sequelize, DataTypes) {
  const ContentCategory = sequelize.define(
    'content_category',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(64),
        allowNull: false,
      },
      code: {
        type: DataTypes.STRING(50),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'content_category',
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

  ContentCategory.associate = function (models) {
    ContentCategory.hasMany(models.contentSection, {
      foreignKey: 'category_id',
      as: 'category',
    });
  };

  return ContentCategory;
};
