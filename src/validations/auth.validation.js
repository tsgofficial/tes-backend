const Joi = require('joi');
const { password } = require('./custom.validation');

const registerCode = {
  body: Joi.object().keys({
    phone: Joi.string().required(),
  }),
};

const registerCheck = {
  body: Joi.object().keys({
    phone: Joi.string().required(),
    code: Joi.required(),
  }),
};

const registerConfirm = {
  body: Joi.object().keys({
    phone: Joi.string().required(),
    password: Joi.string().required(),
    firstname: Joi.string(),
    lastname: Joi.string(),
  }),
};

const login = {
  body: Joi.object().keys({
    phone: Joi.string().required(),
    password: Joi.string().required(),
    roleId: Joi.number(),
    deviceToken: Joi.string(),
  }),
};

const logout = {
  body: Joi.object().keys({
    refreshToken: Joi.string().required(),
  }),
};

const refreshTokens = {
  body: Joi.object().keys({
    refreshToken: Joi.string().required(),
  }),
};

const forgotPassword = {
  body: Joi.object().keys({
    email: Joi.string().email().required(),
  }),
};

const resetPassword = {
  query: Joi.object().keys({
    token: Joi.string().required(),
  }),
  body: Joi.object().keys({
    password: Joi.string().required().custom(password),
  }),
};

const verifyEmail = {
  query: Joi.object().keys({
    token: Joi.string().required(),
  }),
};

module.exports = {
  registerCode,
  registerCheck,
  registerConfirm,
  login,
  logout,
  refreshTokens,
  forgotPassword,
  resetPassword,
  verifyEmail,
};
