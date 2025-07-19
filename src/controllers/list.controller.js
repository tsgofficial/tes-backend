const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Groups = db.groups;
const Roles = db.roles;
const GroupTypes = db.groupType;
const Users = db.users;
const ContentCategory = db.contentCategory;
const getGroups = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const groups = await Groups.findAll({
    attributes: ['id', 'name'],
    where: {
      kinder_id: kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Groups fetched successfully',
    data: groups,
  });
});

const getRoles = catchAsync(async (req, res) => {
  const isAdmin = req.kinderId === 0;
  const whereOptions = isAdmin
    ? {
        shortname: {
          [Op.not]: ['admin'],
        },
      }
    : {
        shortname: {
          [Op.not]: ['admin', 'director'],
        },
      };
  const roles = await Roles.findAll({
    attributes: ['id', 'name'],
    where: whereOptions,
  });

  res.send({
    success: true,
    message: 'Roles fetched successfully',
    data: roles,
  });
});

const getGroupTypes = catchAsync(async (req, res) => {
  const groupTypes = await GroupTypes.findAll({
    attributes: ['id', 'name'],
  });

  res.send({
    success: true,
    message: 'Group types fetched successfully',
    data: groupTypes,
  });
});

const getTeachers = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const teachers = await Users.findAll({
    attributes: ['id', 'firstname', 'lastname'],
    where: {
      role_id: 9,
      kinder_id: kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Teachers fetched successfully',
    data: teachers.map((teacher) => ({
      id: teacher.id,
      name: `${teacher.lastname} ${teacher.firstname}`,
    })),
  });
});

const getSubTeachers = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const subTeachers = await Users.findAll({
    attributes: ['id', 'firstname', 'lastname'],
    where: {
      role_id: 8,
      kinder_id: kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Sub teachers fetched successfully',
    data: subTeachers,
  });
});

const getParents = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const parents = await Users.findAll({
    attributes: ['id', 'firstname', 'lastname'],
    where: {
      role_id: 10,
      kinder_id: kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Parents fetched successfully',
    data: parents,
  });
});

const getContentCategories = catchAsync(async (req, res) => {
  const categories = await ContentCategory.findAll({
    attributes: ['id', 'name'],
  });

  res.send({
    success: true,
    message: 'Content categories fetched successfully',
    data: categories,
  });
});

module.exports = { getGroups, getRoles, getGroupTypes, getTeachers, getParents, getContentCategories, getSubTeachers };
