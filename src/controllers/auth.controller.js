const httpStatus = require('http-status');
const catchAsync = require('../utils/catchAsync');
const { authService, userService, tokenService, emailService } = require('../services');

const registerCode = catchAsync(async (req, res) => {
  await userService.registerCode(req.body.phone);
  res.send({ success: true, message: 'Таны дугаарт SMS кодыг илгээлээ.' });
});

const registerCheck = catchAsync(async (req, res) => {
  const userId = await userService.registerCheck(req.body.phone, req.body.code);
  if (!userId) {
    return res.send({ success: false, message: 'Бүртгүүлэх явцад алдаа гарлаа.' });
  }
  res.send({ success: true, data: userId, message: 'Код амжилттай баталгаажлаа.' });
});

const registerConfirm = catchAsync(async (req, res) => {
  const userPhone = await userService.registerConfirm(req.body);
  if (!userPhone) {
    return res.send({ success: false, message: 'Бүртгүүлэх явцад алдаа гарлаа.' });
  }
  const user = await userService.getUserData(userPhone);
  user.password = undefined;
  const tokens = await tokenService.generateAuthTokens(user);
  res.send({ success: true, message: 'Бүртгэл баталгаажлаа.', token: tokens.access.token });
});

const login = catchAsync(async (req, res) => {
  const { phone, password, roleId } = req.body;
  const user = await authService.loginUserWithPhoneAndPassword(phone, password, roleId);
  if (!user) {
    return res.send({ success: false, message: 'Хэрэглэгчийн нэвтрэх нэр эсвэл нууц үг буруу байна' });
  }
  user.password = undefined;
  const tokens = await tokenService.generateAuthTokens(user);
  res.send({ success: true, token: tokens.access.token });
});

const logout = catchAsync(async (req, res) => {
  await authService.logout(req.body.refreshToken);
  res.status(httpStatus.NO_CONTENT).send();
});

const refreshTokens = catchAsync(async (req, res) => {
  const tokens = await authService.refreshAuth(req.body.refreshToken);
  res.send({ ...tokens });
});

const forgotPassword = catchAsync(async (req, res) => {
  const resetPasswordToken = await tokenService.generateResetPasswordToken(req.body.email);
  await emailService.sendResetPasswordEmail(req.body.email, resetPasswordToken);
  res.status(httpStatus.NO_CONTENT).send();
});

const resetPassword = catchAsync(async (req, res) => {
  await authService.resetPassword(req.query.token, req.body.password);
  res.status(httpStatus.NO_CONTENT).send();
});

const sendVerificationEmail = catchAsync(async (req, res) => {
  const verifyEmailToken = await tokenService.generateVerifyEmailToken(req.user);
  await emailService.sendVerificationEmail(req.user.email, verifyEmailToken);
  res.status(httpStatus.NO_CONTENT).send();
});

const verifyEmail = catchAsync(async (req, res) => {
  await authService.verifyEmail(req.query.token);
  res.status(httpStatus.NO_CONTENT).send();
});

module.exports = {
  registerCode,
  registerCheck,
  registerConfirm,
  login,
  logout,
  refreshTokens,
  forgotPassword,
  resetPassword,
  sendVerificationEmail,
  verifyEmail,
};
