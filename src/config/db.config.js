module.exports = {
  HOST: 'localhost',
  PORT: 3306,
  USER: 'tmoiltr1_tes',
  PASSWORD: 'tmoiltrans123456',
  DB: 'tmoiltr1_tes',
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
};
