const dotenv = require('dotenv');
const path = require('path');
// const Joi = require('joi');
// const logger = require('./logger');

dotenv.config({ path: path.resolve(__dirname, '../../.env') });

// const envVarsSchema = Joi.object()
//   .keys({
//     NODE_ENV: Joi.string().valid('production', 'development', 'test').required(),
//     PORT: Joi.number().default(3000),
//     MYSQL_HOST: Joi.string().required().description('MySQL database host'),
//     MYSQL_PORT: Joi.number().default(3306).description('MySQL database port'),
//     MYSQL_DB: Joi.string().required().description('MySQL database name'),
//     MYSQL_USER: Joi.string().required().description('MySQL database username'),
//     MYSQL_PASSWORD: Joi.string().required().description('MySQL database password'),
//     JWT_SECRET: Joi.string().required().description('JWT secret key'),
//     JWT_ACCESS_EXPIRATION_MINUTES: Joi.number().default(30).description('minutes after which access tokens expire'),
//     JWT_REFRESH_EXPIRATION_DAYS: Joi.number().default(30).description('days after which refresh tokens expire'),
//     JWT_RESET_PASSWORD_EXPIRATION_MINUTES: Joi.number()
//       .default(10)
//       .description('minutes after which reset password token expires'),
//     JWT_VERIFY_EMAIL_EXPIRATION_MINUTES: Joi.number()
//       .default(10)
//       .description('minutes after which verify email token expires'),
//     SMTP_HOST: Joi.string().description('server that will send the emails'),
//     SMTP_PORT: Joi.number().description('port to connect to the email server'),
//     SMTP_USERNAME: Joi.string().description('username for email server'),
//     SMTP_PASSWORD: Joi.string().description('password for email server'),
//     EMAIL_FROM: Joi.string().description('the from field in the emails sent by the app'),
//   })
//   .unknown();

// const { value: envVars, error } = envVarsSchema.prefs({ errors: { label: 'key' } }).validate(process.env);

// if (error) {
//   throw new Error(`Config validation error: ${error.message}`);
// }

const config = {
  env: 'production',
  port: '3000',
  mysql: {
    host: 'localhost',
    port: '3306',
    database: 'tmoiltr1_tes',
    username: 'tmoiltr1_tes',
    password: 'tmoiltrans123456',
    dialect: 'mysql',
    // logging: envVars.NODE_ENV === 'development' ? (msg) => logger.info(msg) : false,
    logging: false,
  },
  jwt: {
    secret: '4669a8beb52933edc5d69825f68b5eaf1fc141c889894800d45b1aaa3ee36760',
    accessExpirationMinutes: 30,
    refreshExpirationDays: 30,
    resetPasswordExpirationMinutes: 10,
    verifyEmailExpirationMinutes: 10,
  },
};
module.exports = config;
