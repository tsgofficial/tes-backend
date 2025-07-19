const jwt = require('jsonwebtoken');
// const passport = require('passport');
// const httpStatus = require('http-status');
// const ApiError = require('../utils/ApiError');
// const { roleRights } = require('../config/roles');
const { nullCheck } = require('../utils/functions/nullCheck');

// const verifyCallback = (req, resolve, reject, requiredRights) => async (err, user, info) => {
//   if (err || info || !user) {
//     return reject(new ApiError(httpStatus.UNAUTHORIZED, 'Please authenticate'));
//   }
//   req.user = user;

//   if (requiredRights.length) {
//     const userRights = roleRights.get(user.role);
//     const hasRequiredRights = requiredRights.every((requiredRight) => userRights.includes(requiredRight));
//     if (!hasRequiredRights && req.params.userId !== user.id) {
//       return reject(new ApiError(httpStatus.FORBIDDEN, 'Forbidden'));
//     }
//   }

//   resolve();
// };

// const auth =
//   (...requiredRights) =>
//   async (req, res, next) => {
//     return new Promise((resolve, reject) => {
//       passport.authenticate('jwt', { session: false }, verifyCallback(req, resolve, reject, requiredRights))(req, res, next);
//     })
//       .then(() => next())
//       .catch((err) => next(err));
//   };

const protect = async (req, res, next) => {
  let token = '';
  if (req.headers.authorization !== undefined) {
    [, token] = req.headers.authorization.split(' ');
  }
  if (nullCheck(token)) {
    return res.send({ success: false, message: 'Please authenticate' });
  }
  try {
    const tokenObj = jwt.verify(token, process.env.JWT_SECRET ?? '');
    req.userId = tokenObj.user.id;
    req.kinderId = tokenObj.user.kinder.id;
    req.roleId = tokenObj.user.role.id;
    next();
  } catch (err) {
    if (err.name === 'TokenExpiredError' || err.name === 'JsonWebTokenError') {
      return res.send({ success: false, message: 'Please authenticate' });
    }
  }
};

module.exports = { protect };
