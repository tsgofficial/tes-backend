const db = require('../models');
const catchAsync = require('../utils/catchAsync');
const { nullCheck } = require('../utils/functions/nullCheck');

const Users = db.users;
const Kinders = db.kinders;
const Roles = db.roles;
const Children = db.child;
const Groups = db.groups;

const getUser = catchAsync(async (req, res) => {
  const page = parseInt(req.query.page, 10) || 1;
  const limit = parseInt(req.query.limit, 10) || 10;
  const offset = (page - 1) * limit;

  const { count, rows: users } = await Users.findAndCountAll({
    attributes: ['id', 'phone', 'firstname', 'lastname'],
    include: [
      {
        model: Kinders,
        as: 'userKinder',
        attributes: ['id', 'name'],
      },
      {
        model: Roles,
        as: 'userRole',
      },
      {
        model: Groups,
        as: 'userGroup',
      },
    ],
    limit,
    offset,
  });

  const totalPages = Math.ceil(count / limit);

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: {
      users,
      currentPage: page,
      totalPages,
      totalUsers: count,
    },
  });
});

const getChild = catchAsync(async (req, res) => {
  const page = parseInt(req.query.page, 10) || 1;
  const limit = parseInt(req.query.limit, 10) || 10;
  const offset = (page - 1) * limit;

  const { count, rows: children } = await Children.findAndCountAll({
    attributes: ['id', 'firstname', 'lastname', 'rd', 'birthday', 'gender'],
    include: [
      {
        model: Kinders,
        as: 'childKinders',
        attributes: ['id', 'name'],
      },
      {
        model: Groups,
        as: 'childGroup',
      },
      {
        model: Users,
        as: 'parent',
        attributes: ['id', 'firstname', 'lastname', 'phone'],
      },
    ],
    limit,
    offset,
  });

  const totalPages = Math.ceil(count / limit);

  res.send({
    success: true,
    message: 'Fetched users data successfully',
    data: {
      children,
      currentPage: page,
      totalPages,
      totalChildren: count,
    },
  });
});

const addUser = catchAsync(async (req, res) => {
  const kinderId = req.params.id;
  const { phone, name, role, group } = req.body;
  if (nullCheck(phone) || phone.length !== 8) {
    throw new Error('Утасны дугаар хоосон байна');
  }
  const checkPhone = await Users.findOne({
    where: {
      phone,
    },
  });
  if (checkPhone) {
    throw new Error('Утасны дугаар давхардаж байна');
  }
  const account = await Users.create({
    phone,
    firstname: name,
    role_id: role,
    group_id: group,
    active: 0,
    kinder_id: kinderId,
  });
  if (!account) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Аккаунт амжилттай үүслээ',
  });
});

module.exports = { addUser, getUser, getChild };
