const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Role = db.roles;

const getRoles = catchAsync(async (req, res) => {
  const roles = await Role.findAll({
    attributes: ['id', 'name'],
  });

  res.send({
    success: true,
    message: 'Roles fetched successfully',
    data: roles,
  });
});

const addRole = catchAsync(async (req, res) => {
  const { name } = req.body;
  if (!name) {
    return res.status(400).send({
      success: false,
      message: 'All fields are required',
    });
  }

  const newRole = await Role.create({
    name,
    shortname: 'custom',
  });

  res.status(200).send({
    success: true,
    message: 'Role created successfully',
    data: newRole,
  });
});

const editRole = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;

  const role = await Role.findByPk(id);
  if (!role) {
    return res.status(404).send({
      success: false,
      message: 'Role not found',
    });
  }

  await role.update({
    name,
  });

  res.send({
    success: true,
    message: 'Role updated successfully',
    data: role,
  });
});

const deleteRole = catchAsync(async (req, res) => {
  const { id } = req.params;

  const role = await Role.findByPk(id);
  if (!role) {
    return res.status(404).send({
      success: false,
      message: 'Role not found',
    });
  }

  await role.destroy();

  res.send({
    success: true,
    message: 'Role deleted successfully',
  });
});

module.exports = { getRoles, addRole, editRole, deleteRole };
