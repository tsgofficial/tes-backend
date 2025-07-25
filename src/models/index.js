const { Sequelize } = require('sequelize');
const dbConfig = require('../config/db.config');

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  port: dbConfig.PORT,
  dialect: dbConfig.dialect,
  logging: false,
  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle,
  },
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.trucks = require('./trucks.model')(sequelize, Sequelize);
db.volumes = require('./volumes.model')(sequelize, Sequelize);
db.drivers = require('./drivers.model')(sequelize, Sequelize);
db.containers = require('./containers.model')(sequelize, Sequelize);
db.fuel_locations = require('./fuel_locations.model')(sequelize, Sequelize);
db.fuel_types = require('./fuel_types.model')(sequelize, Sequelize);
db.fuel_logs = require('./fuel_logs.model')(sequelize, Sequelize);
db.deliveries = require('./deliveries.model')(sequelize, Sequelize);

Object.keys(db).forEach((modelName) => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

module.exports = db;
