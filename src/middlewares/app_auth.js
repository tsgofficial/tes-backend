const jwt = require('jsonwebtoken');
const { nullCheck } = require('../utils/functions/nullCheck');

const protectApp = async (req, res, next) => {
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
    req.groupId = tokenObj.user.groupId;
    req.deviceToken = tokenObj.user.deviceToken;
    next();
  } catch (err) {
    if (err.name === 'TokenExpiredError' || err.name === 'JsonWebTokenError') {
      return res.send({ success: false, message: 'Please authenticate' });
    }

    return res.send({ success: false, message: 'Something went wrong' });
  }
};

module.exports = { protectApp };
