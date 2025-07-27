const bcrypt = require('bcrypt');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const getUsers = catchAsync(async (req, res) => {
  const users = await db.users.findAll({
    attributes: ['id', 'username', 'role', 'firstname', 'lastname'],
    where: {
      [db.Sequelize.Op.or]: [{ role: 'manager' }, { role: 'inspector' }],
    },
  });

  res.send({
    success: true,
    message: 'Fetched users successfully',
    data: users,
  });
});

const createUsers = catchAsync(async (req, res) => {
  const { username, password, role, firstname, lastname } = req.body;

  if (!username || !password || !role || !firstname || !lastname) {
    return res.status(400).send({
      success: false,
      message: 'Username, password, and role are required',
    });
  }

  if (role !== 'manager' && role !== 'inspector') {
    return res.status(400).send({
      success: false,
      message: 'Role must be either "manager" or "inspector"',
    });
  }

  const existingUser = await db.users.findOne({ where: { username } });
  if (existingUser) {
    return res.status(400).send({
      success: false,
      message: 'User with this username already exists',
    });
  }

  const hashedPassword = await bcrypt.hash(password, 10);
  const user = await db.users.create({ username, password: hashedPassword, role, firstname, lastname });

  const { password: _, ...userWithoutPassword } = user.get({ plain: true });

  res.send({
    success: true,
    message: 'User created successfully',
    data: userWithoutPassword,
  });
});

const editUsers = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { username, password, role, firstname, lastname } = req.body;

  const user = await db.users.findByPk(id);
  if (!user) {
    return res.status(404).send({
      success: false,
      message: 'User not found',
    });
  }

  if (role && role !== 'manager' && role !== 'inspector') {
    return res.status(400).send({
      success: false,
      message: 'Role must be either "manager" or "inspector"',
    });
  }

  const existingUser = await db.users.findOne({ where: { username, id: { [db.Sequelize.Op.ne]: id } } });
  if (existingUser) {
    return res.status(400).send({
      success: false,
      message: 'User with this username already exists',
    });
  }

  if (existingUser && existingUser.role === 'admin') {
    return res.status(400).send({
      success: false,
      message: 'Cannot edit admin user',
    });
  }

  if (username) {
    user.username = username;
  }
  if (password) {
    user.password = await bcrypt.hash(password, 10);
  }
  if (role) {
    user.role = role;
  }
  if (firstname) {
    user.firstname = firstname;
  }
  if (lastname) {
    user.lastname = lastname;
  }

  await user.save();

  const { password: _, ...userWithoutPassword } = user.get({ plain: true });

  res.send({
    success: true,
    message: 'User updated successfully',
    data: userWithoutPassword,
  });
});

const deleteUsers = catchAsync(async (req, res) => {
  const { id } = req.params;

  const user = await db.users.findByPk(id);
  if (!user) {
    return res.status(404).send({
      success: false,
      message: 'User not found',
    });
  }

  if (user.role === 'admin') {
    return res.status(400).send({
      success: false,
      message: 'Cannot delete admin user',
    });
  }

  await user.destroy();

  res.send({
    success: true,
    message: 'User deleted successfully',
  });
});

module.exports = { getUsers, createUsers, editUsers, deleteUsers };
