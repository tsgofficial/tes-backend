const bcrypt = require('bcryptjs');
const { Op } = require('sequelize');
const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');
const { authService, userService, tokenService } = require('../../../services');
const { sendSMS } = require('../../../utils/functions/sendSMS');

const Users = db.users;
const Child = db.child;
const login = catchAsync(async (req, res) => {
  const { phone, password, deviceToken } = req.body;

  if (!phone || !password) {
    res.send({
      success: false,
      message: 'Нэр эсвэл нууц үг дутуу байна',
    });
  }

  if (!authService.isValidPhoneNumber(phone)) {
    res.send({
      success: false,
      message: 'Нэр эсвэл нууц үг буруу байна',
    });
  }

  const user = await Users.findOne({
    where: { phone, active: 1, role_id: { [Op.in]: [4, 8] } },
    attributes: ['id', 'firstname', 'lastname', 'password', 'status', 'group_id', 'kinder_id', 'device_token'],
  });

  if (user) {
    await user.update({ device_token: deviceToken });
  }

  if (user && !(await userService.isPasswordMatch(password, user.password))) {
    res.send({
      success: false,
      message: 'Нэр эсвэл нууц үг буруу байна',
    });
  }

  const childCount = await Child.count({
    where: { group_id: user?.group_id },
  });
  if (!user) {
    res.send({
      success: false,
      message: 'Нэр эсвэл нууц үг буруу байна',
    });
  }

  const userData = {
    id: user.id,
    firstname: user.firstname,
    lastname: user.lastname,
    childCount,
    kinderId: user.kinder_id,
    groupId: user.group_id,
    deviceToken: user.device_token,
  };
  const tokens = await tokenService.generateAuthTokens(userData);
  const { token } = tokens.access;
  res.header('Authorization', `Bearer ${token}`);

  res.send({
    success: true,
    message: 'Амжилттай нэвтэрлээ',
    token,
    status: user.status,
  });
});

const generateOtp = catchAsync(async (req, res) => {
  const { phone } = req.body;
  const otp = Math.floor(1000 + Math.random() * 9000);
  const generateOtpExpire = new Date(new Date().getTime() + 10 * 60 * 1000);
  await Users.update({ sms_code: otp, sms_code_expire: generateOtpExpire }, { where: { phone, active: 1 } });
  await sendSMS(phone, `Таны цахим цэцэрлэгийн сэргээх код: ${otp}`);
  res.send({ success: true, message: 'Таны дугаарт SMS кодыг илгээлээ.' });
});

const checkOtp = catchAsync(async (req, res) => {
  const { phone, otp } = req.body;
  const userRow = await Users.findOne({
    where: { phone, active: 1, sms_code: otp },
  });
  if (!userRow) {
    res.send({ success: false, message: 'Код буруу байна.' });
  }
  const smsCodeExpire = userRow.sms_code_expire;
  if (smsCodeExpire < new Date()) {
    res.send({ success: false, message: 'SMS кодны хугацаа дууссан байна. Та дахин илгээнэ үү.' });
  }
  res.send({ success: true, message: 'Код амжилттай баталгаажлаа.' });
});

const generatePassword = catchAsync(async (req, res) => {
  const { phone, password } = req.body;
  const hashedPassword = await bcrypt.hash(password, 10);
  await Users.update({ password: hashedPassword }, { where: { phone, active: 1 } });
  res.send({ success: true, message: 'Нууц үг амжилттай өөрчлөгдлөө.' });
});

module.exports = { login, generateOtp, checkOtp, generatePassword };
