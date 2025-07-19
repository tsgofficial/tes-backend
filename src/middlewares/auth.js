const jwt = require('jsonwebtoken');
const { nullCheck } = require('../utils/functions/nullCheck');

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
    req.groupId = tokenObj.user.group.id;
    next();
  } catch (err) {
    if (err.name === 'TokenExpiredError' || err.name === 'JsonWebTokenError') {
      return res.send({ success: false, message: 'Please authenticate' });
    }

    return res.send({ success: false, message: 'Something went wrong' });
  }
};

module.exports = { protect };
