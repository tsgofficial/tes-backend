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
    req.user = tokenObj;

    const { role } = tokenObj;
    const { baseUrl, method } = req;

    if (role === 'inspector' && !baseUrl.includes('/deliveries/receive')) {
      return res.send({ success: false, message: 'You are not authorized to access this resource' });
    }
    next();
  } catch (err) {
    if (err.name === 'TokenExpiredError' || err.name === 'JsonWebTokenError') {
      return res.status(401).send({ success: false, message: 'Please authenticate' });
    }

    return res.send({ success: false, message: 'Something went wrong' });
  }
};

module.exports = { protect };
