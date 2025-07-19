const Joi = require('joi');

const userAdd = {
  body: Joi.object().keys({
    phone: Joi.required(),
    password: Joi.string().required(),
    roleId: Joi.number().required(),
    groupId: Joi.number().optional(),
    firstname: Joi.string().optional(),
    lastname: Joi.string().optional(),
  }),
};

module.exports = {
  userAdd,
};
