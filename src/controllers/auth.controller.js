const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const db = require('../models');

const Users = db.users;

// const SALT_ROUNDS = 10;

const login = async (req, res) => {
  const { username, password } = req.body;

  if (!username || !password) {
    return res.status(400).send({
      success: false,
      message: 'username and password are required',
    });
  }

  const user = await Users.findOne({ where: { username } });
  const isValid = await bcrypt.compare(password, user.password);

  if (!user || !isValid) {
    return res.status(401).send({
      success: false,
      message: 'Invalid username or password',
    });
  }

  const { password: _, ...userWithoutPassword } = user.get({ plain: true });

  const token = jwt.sign(userWithoutPassword, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRES_IN,
  });

  res.send({
    success: true,
    message: 'Login successful',
    data: { token },
  });
};

module.exports = { login };
