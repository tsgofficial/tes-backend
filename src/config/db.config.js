module.exports = {
  HOST: process.env.MYSQL_HOST || 'localhost',
  PORT: process.env.MYSQL_PORT || 3307,
  USER: process.env.MYSQL_USER || 'root',
  PASSWORD: process.env.MYSQL_PASSWORD || 'secret',
  DB: process.env.MYSQL_DB || 'tes',
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
};
