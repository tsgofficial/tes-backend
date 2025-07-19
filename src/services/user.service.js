const httpStatus = require('http-status');
const bcrypt = require('bcryptjs');
const db = require('../models');
const ApiError = require('../utils/ApiError');
const { sendSMS } = require('../utils/functions/sendSMS');
const { buildMenu } = require('../utils/functions/menu');

const User = db.users;
const Role = db.roles;
const Kinder = db.kinders;
const Groups = db.groups;

const registerCode = async (phone) => {
  const userRow = await User.findOne({
    where: { phone },
  });
  if (!userRow) {
    throw new ApiError(200, 'Таныг эхлээд эрхлэгч бүртгэснээр бүртгүүлэх боломжтой.');
  }
  if (userRow.status === 'ok' || userRow.status === 'expired') {
    throw new ApiError(200, 'Хэрэглэгч бүртгэлтэй байна.');
  }

  const sendCode = Math.floor(1000 + Math.random() * 9000);
  const codeExpire = new Date(new Date().getTime() + 10 * 60 * 1000);
  await sendSMS(phone, `Таны цахим цэцэрлэгт бүртгүүлэх код: ${sendCode}`);
  return User.update({ sms_code: sendCode, sms_code_expire: codeExpire }, { where: { id: userRow.id } });
};

const registerCheck = async (phone, code) => {
  const userRow = await User.findOne({
    where: { phone, sms_code: code },
  });
  if (!userRow) {
    throw new ApiError(200, 'Таны оруулсан код буруу байна.');
  }
  const smsCodeExpire = userRow.sms_code_expire;
  if (smsCodeExpire < new Date()) {
    throw new ApiError(200, 'SMS кодны хугацаа дууссан байна. Та дахин илгээнэ үү.');
  }
  return userRow.id;
};

const registerConfirm = async (body) => {
  const userRow = await User.findOne({
    where: { phone: body.phone },
    attributes: ['id', 'phone', 'password', 'role_id', 'kinder_id'],
  });
  const hashedPassword = await bcrypt.hash(body.password, 10);
  const user = await userRow.update({
    status: 'ok',
    active: 1,
    password: hashedPassword,
    firstname: body.firstname,
    lastname: body.lastname,
  });
  return user.phone;
};

const queryUsers = async (filter, options) => {
  const users = await User.paginate(filter, options);
  return users;
};

const getUserById = async (id) => {
  return User.findByPk(id);
};

const getUserData = async (phone, roleId) => {
  let roleWhere = {};
  if (roleId) {
    roleWhere = {
      id: roleId,
    };
  }
  const userRow = await User.findOne({
    where: { phone, status: 'ok', active: 1 },
    attributes: ['id', 'phone', 'password', 'firstname', 'lastname', 'role_id', 'kinder_id', 'group_id'],
    include: [
      {
        model: Role,
        as: 'userRole',
        attributes: ['name'],
        required: false,
        where: roleWhere,
      },
      {
        model: Kinder,
        as: 'userKinder',
        attributes: ['name'],
        required: false,
      },
      {
        model: Groups,
        as: 'userGroup',
        attributes: ['name'],
        required: false,
      },
    ],
  });
  if (!userRow) {
    return null;
  }
  return {
    id: userRow.id,
    phone: userRow.phone,
    password: userRow.password,
    firstname: userRow.firstname,
    lastname: userRow.lastname,
    role: {
      id: userRow.role_id,
      name: userRow.userRole ? userRow.userRole.name : null,
    },
    kinder: {
      id: userRow.kinder_id,
      name: userRow.userKinder ? userRow.userKinder.name : null,
    },
    group: {
      id: userRow.group_id,
      name: userRow.userGroup?.name ?? null,
    },
    menu: await buildMenu(userRow.role_id),
  };
};
const isPasswordMatch = async (password, dbPassword) => {
  const match = await bcrypt.compare(password, dbPassword);
  return match;
};

const updateUserById = async (userId, updateBody) => {
  const user = await getUserById(userId);
  if (!user) {
    throw new ApiError(httpStatus.NOT_FOUND, 'User not found');
  }
  if (updateBody.email && (await User.isEmailTaken(updateBody.email, userId))) {
    throw new ApiError(httpStatus.BAD_REQUEST, 'Email already taken');
  }
  Object.assign(user, updateBody);
  await user.save();
  return user;
};

const deleteUserById = async (userId) => {
  const user = await getUserById(userId);
  if (!user) {
    throw new ApiError(httpStatus.NOT_FOUND, 'User not found');
  }
  await user.remove();
  return user;
};

module.exports = {
  registerCode,
  registerCheck,
  registerConfirm,
  queryUsers,
  getUserById,
  getUserData,
  isPasswordMatch,
  updateUserById,
  deleteUserById,
};
