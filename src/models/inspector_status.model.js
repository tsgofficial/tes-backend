module.exports = function (sequelize, DataTypes) {
  const InspectorStatus = sequelize.define(
    'inspector_status',
    {
      id: {
        autoIncrement: true,
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
      color: {
        type: DataTypes.STRING(100),
        allowNull: true,
      },
    },
    {
      sequelize,
      tableName: 'inspector_status',
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

  InspectorStatus.associate = function (models) {
    InspectorStatus.hasMany(models.delivery_details, {
      foreignKey: 'inspector_status_id',
      as: 'deliveryDetails',
    });
  };

  return InspectorStatus;
};
