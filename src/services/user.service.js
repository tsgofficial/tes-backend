const db = require('../models');
const ApiError = require('../utils/ApiError');

const User = db.users;

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
  return User.update({ sms_code: sendCode, sms_code_expire: codeExpire }, { where: { id: userRow.id } });
};

module.exports = { registerCode };
