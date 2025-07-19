const httpStatus = require('http-status');
const tokenService = require('./token.service');
const userService = require('./user.service');
const ApiError = require('../utils/ApiError');
const { tokenTypes } = require('../config/tokens');

/**
 * Login with username and password
 * @param {string} phone
 * @param {string} password
 * @returns {Promise<User>}
 */
const loginUserWithPhoneAndPassword = async (phone, password, roleId) => {
  const user = await userService.getUserData(phone, roleId);
  if (!user || !(await userService.isPasswordMatch(password, user.password))) {
    throw new ApiError(200, 'Хэрэглэгчийн нэвтрэх нэр эсвэл нууц үг буруу байна', false);
  }
  return user;
};

/**
 * Refresh auth tokens
 * @param {string} refreshToken
 * @returns {Promise<Object>}
 */
const refreshAuth = async (refreshToken) => {
  try {
    const refreshTokenDoc = await tokenService.verifyToken(refreshToken, tokenTypes.REFRESH);
    const user = await userService.getUserById(refreshTokenDoc.user);
    if (!user) {
      throw new Error();
    }
    await refreshTokenDoc.remove();
    return tokenService.generateAuthTokens(user);
  } catch (error) {
    throw new ApiError(httpStatus.UNAUTHORIZED, 'Please authenticate');
  }
};

/**
 * Reset password
 * @param {string} resetPasswordToken
 * @param {string} newPassword
 * @returns {Promise}
 */
const resetPassword = async (resetPasswordToken, newPassword) => {
  try {
    const resetPasswordTokenDoc = await tokenService.verifyToken(resetPasswordToken, tokenTypes.RESET_PASSWORD);
    const user = await userService.getUserById(resetPasswordTokenDoc.user);
    if (!user) {
      throw new Error();
    }
    await userService.updateUserById(user.id, { password: newPassword });
  } catch (error) {
    throw new ApiError(httpStatus.UNAUTHORIZED, 'Password reset failed');
  }
};

// const verifyEmail = async (verifyEmailToken) => {
//   try {
//     const verifyEmailTokenDoc = await tokenService.verifyToken(verifyEmailToken, tokenTypes.VERIFY_EMAIL);
//     const user = await userService.getUserById(verifyEmailTokenDoc.user);
//     if (!user) {
//       throw new Error();
//     }
//     await userService.updateUserById(user.id, { isEmailVerified: true });
//   } catch (error) {
//     throw new ApiError(httpStatus.UNAUTHORIZED, 'Email verification failed');
//   }
// };
function isValidPhoneNumber(phoneNumber) {
  if (!phoneNumber || phoneNumber.length !== 8) {
    return false;
  }

  // Mobi, Skytel, GMobile start with 9
  // Unitel start with 8
  // Lime start with 7
  // Ondo start with 6
  return (
    phoneNumber.startsWith('9') || phoneNumber.startsWith('8') || phoneNumber.startsWith('7') || phoneNumber.startsWith('6')
  );
}

module.exports = {
  loginUserWithPhoneAndPassword,
  refreshAuth,
  resetPassword,
  isValidPhoneNumber,
};
