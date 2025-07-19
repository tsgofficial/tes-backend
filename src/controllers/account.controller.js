const bcrypt = require('bcryptjs');
const { Op } = require('sequelize');
const { sequelize } = require('../models');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Groups = db.groups;
const GroupType = db.groupType;
const Users = db.users;
const Roles = db.roles;
const Child = db.child;
const groupList = catchAsync(async (req, res) => {
  const { kinderId } = req;

  // Fetch groups with associated user data and group type data
  const groups = await Groups.findAll({
    where: {
      kinder_id: kinderId,
    },
    attributes: ['id', 'name', 'type'],
    include: [
      {
        model: Users,
        as: 'userGroup',
        attributes: ['id', 'firstname', 'lastname', 'role_id'],
        required: false,
      },
      {
        model: GroupType,
        attributes: ['id', 'name'],
        as: 'groupType',
      },
    ],
    order: [['id', 'DESC']],
  });

  // Define a role mapping for role_id values
  const roleMapping = { 4: 'Багш', 8: 'Туслах багш' };

  // Map groups to the desired format
  const sendData = groups.map((group) => {
    // Filter and map teachers for each group
    const teachers = (group.userGroup || []).map((user) => ({
      id: user.id,
      name: `${user.firstname}${user.lastname ? ` ${user.lastname}` : ''}`,
      role: roleMapping[user.role_id] || 'Unknown',
    }));

    // Return formatted group data with teachers array
    return {
      id: group.id,
      name: group.name,
      type: group.groupType.name,
      typeId: group.groupType.id,
      teachers,
    };
  });

  // Send the response
  res.send({
    success: true,
    message: 'Fetched groups data successfully',
    data: sendData,
  });
});
const groupAdd = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const { name, type, teacherId, subTeacherId } = req.body;
  const account = await Groups.create({
    name,
    type,
    kinder_id: kinderId,
  });
  if (!account) {
    throw new Error('Алдаа гарлаа');
  }
  await Users.update({ group_id: account.id }, { where: { id: teacherId } });
  if (subTeacherId) {
    await Users.update({ group_id: account.id }, { where: { id: subTeacherId } });
  }
  res.send({
    success: true,
    message: 'Аккаунт амжилттай үүслээ',
  });
});
const groupDelete = catchAsync(async (req, res) => {
  const { id } = req.params;
  const account = await Groups.destroy({ where: { id } });
  if (!account) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Аккаунт амжилттай устгагдлаа',
  });
});
const groupEdit = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name, type, teacherId, subTeacherId } = req.body;
  const account = await Groups.update({ name, type }, { where: { id } });
  if (!account) {
    throw new Error('Алдаа гарлаа');
  }
  await Users.update({ group_id: null }, { where: { group_id: id } });
  await Users.update({ group_id: id }, { where: { id: teacherId } });
  if (subTeacherId) {
    await Users.update({ group_id: id }, { where: { id: subTeacherId } });
  }
  res.send({
    success: true,
    message: 'Бүлэг амжилттай өөрчиллөө',
  });
});
const userList = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const users = await Users.findAll({
    where: {
      kinder_id: kinderId,
    },
    attributes: ['id', 'active', 'firstname', 'lastname', 'phone'],
    include: [
      {
        model: Roles,
        attributes: ['id', 'name'],
        as: 'userRole',
      },
      {
        model: Groups,
        attributes: ['id', 'name'],
        as: 'userGroup',
      },
    ],
  });
  res.send({
    success: true,
    message: 'Хэрэглэгчид амжилттай авагдлаа',
    data: users,
  });
});
const userAdd = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const { firstname, lastname, phone, roleId, groupId, password } = req.body;
  const hashedPassword = await bcrypt.hash(password, 10);
  const phoneCheck = await Users.findOne({ where: { phone } });
  if (phoneCheck) {
    throw new Error('Хэрэглэгч нэвтрэх утасны дугаартай бүртгэлтэй байна');
  }
  const user = await Users.create({
    firstname,
    lastname,
    phone,
    role_id: roleId,
    group_id: groupId,
    kinder_id: kinderId,
    password: hashedPassword,
    active: 1,
    status: 'ok',
  });
  if (!user) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Хэрэглэгчид амжилттай үүслээ',
  });
});
const userDelete = catchAsync(async (req, res) => {
  const { id } = req.params;
  const user = await Users.destroy({ where: { id } });
  if (!user) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Хэрэглэгчид амжилттай устгагдлаа',
  });
});
const userEdit = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { firstname, lastname, phone, roleId, groupId, password, active } = req.body;

  // Check if the user exists
  const userCheck = await Users.findOne({ where: { id } });
  if (!userCheck) {
    throw new Error('Хэрэглэгч олдсонгүй');
  }

  // Check for unique phone number, excluding the current user
  const phoneCheck = await Users.findOne({ where: { phone, id: { [Op.ne]: id } } });
  if (phoneCheck) {
    throw new Error('Хэрэглэгчийн утасны дугаар бүртгэлтэй байна'); // Phone number already registered
  }

  // Prepare user data for update
  const updateData = {
    firstname,
    lastname,
    phone,
    role_id: roleId,
    group_id: groupId,
    active,
  };

  // Only hash the password if it is provided
  if (password) {
    updateData.password = await bcrypt.hash(password, 10);
  }

  await Users.update(updateData, { where: { id } });

  // Send success response
  res.send({
    success: true,
    message: 'Хэрэглэгчид амжилттай өөрчиллөө', // User updated successfully
  });
});

const parentList = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const parents = await Users.findAll({
    where: {
      kinder_id: kinderId,
      role_id: 10,
    },
    attributes: ['id', 'active', 'firstname', 'lastname', 'phone'],
    include: [
      {
        model: Child,
        attributes: ['id', 'firstname', 'lastname', 'rd'],
        as: 'userChild',
      },
      {
        model: Groups,
        attributes: ['id', 'name'],
        as: 'userGroup',
      },
    ],
  });
  res.send({
    success: true,
    message: 'Амжилттай авагдлаа',
    data: parents,
  });
});
const parentAdd = catchAsync(async (req, res) => {
  const transaction = await sequelize.transaction(); // Start transaction
  try {
    const { kinderId } = req;
    const { firstname, lastname, phone, groupId, children, password } = req.body;

    const phoneCheck = await Users.findOne({ where: { phone }, transaction });
    if (phoneCheck) {
      throw new Error('Хэрэглэгчийн утасны дугаар бүртгэлтэй байна');
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    const parent = await Users.create(
      {
        firstname,
        lastname,
        phone,
        role_id: 10,
        group_id: groupId,
        kinder_id: kinderId,
        active: 1,
        status: 'ok',
        password: hashedPassword,
      },
      { transaction }
    );

    if (!parent) {
      throw new Error('Алдаа гарлаа');
    }

    // const childrenData = await Promise.all(
    //   children.map(async (child) => {
    //     const checkRegister = await Child.findOne({ where: { rd: child.rd }, transaction });
    //     if (checkRegister) {
    //       throw new Error(`${child.firstname} ${child.lastname} хүүхдийн регистрийн дугаар бүртгэлтэй байна`);
    //     }
    //     const childData = await Child.create(
    //       {
    //         firstname: child.firstname,
    //         lastname: child.lastname,
    //         rd: child.rd,
    //         user_id: parent.id,
    //         group_id: groupId,
    //         kinder_id: kinderId,
    //         gender: child.gender,
    //         birthday: child.birthday,
    //         address: child.address,
    //       },
    //       { transaction }
    //     );
    //     return childData;
    //   })
    // );

    await Child.update({ user_id: parent.id }, { where: { id: children } });

    await transaction.commit();

    res.send({
      success: true,
      message: 'Амжилттай үүслээ',
      data: { parent, children: parent },
    });
  } catch (error) {
    await transaction.rollback();
    res.status(500).send({
      success: false,
      message: error.message || 'Алдаа гарлаа',
    });
  }
});
const parentEdit = catchAsync(async (req, res) => {
  const transaction = await sequelize.transaction();
  try {
    const { id } = req.params;
    const { firstname, lastname, phone, groupId, children, password } = req.body;

    const parent = await Users.findOne({ where: { id }, transaction });
    if (!parent) {
      throw new Error('Хэрэглэгч олдсонгүй');
    }

    const phoneCheck = await Users.findOne({ where: { phone, id: { [Op.ne]: id } }, transaction });
    if (phoneCheck) {
      throw new Error('Хэрэглэгчийн утасны дугаар бүртгэлтэй байна');
    }

    const updatedParentData = {
      firstname: firstname || parent.firstname,
      lastname: lastname || parent.lastname,
      phone: phone || parent.phone,
      group_id: groupId || parent.group_id,
    };

    if (password) {
      updatedParentData.password = await bcrypt.hash(password, 10);
    }

    await parent.update(updatedParentData, { transaction });

    await Child.update({ user_id: 0 }, { where: { user_id: parent.id } });
    await Child.update({ user_id: parent.id }, { where: { id: children } });

    await transaction.commit();

    res.send({
      success: true,
      message: 'Эцэг эхийн мэдээлэл амжилттай шинэчлэгдлээ',
    });
  } catch (error) {
    await transaction.rollback();

    res.status(500).send({
      success: false,
      message: error.message || 'Алдаа гарлаа',
    });
  }
});
const parentDelete = catchAsync(async (req, res) => {
  const { id } = req.params;
  const parent = await Users.destroy({ where: { id } });
  if (!parent) {
    throw new Error('Алдаа гарлаа');
  }
  const children = await Child.destroy({ where: { user_id: id } });
  if (!children) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Эцэг эхийн мэдээлэл амжилттай устгагдлаа',
  });
});
const childList = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const children = await Child.findAll({
    where: {
      kinder_id: kinderId,
    },
    attributes: ['id', 'firstname', 'lastname', 'rd', 'birthday', 'group_id', 'gender', 'address'],
    include: [
      {
        model: Users,
        attributes: ['id', 'firstname', 'lastname'],
        as: 'parent',
      },
    ],
  });

  res.send({
    success: true,
    message: 'Хүүхдүүд амжилттай авагдлаа',
    data: children,
  });
});
const childAdd = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const { firstname, lastname, rd, parentId, groupId, gender, birthday, address } = req.body;
  const checkRegister = await Child.findOne({ where: { rd } });
  if (checkRegister) {
    throw new Error('Регистрийн дугаар бүртгэлтэй байна');
  }
  const child = await Child.create({
    firstname,
    lastname,
    rd,
    user_id: parentId,
    group_id: groupId,
    kinder_id: kinderId,
    gender,
    birthday,
    address,
  });
  if (!child) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Хүүхэд амжилттай үүслээ',
  });
});
const childEdit = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { firstname, lastname, rd, parentId, groupId, gender, birthday, address } = req.body;
  const checkRegister = await Child.findOne({ where: { rd, id: { [Op.ne]: id } } });
  if (checkRegister) {
    throw new Error('Регистрийн дугаар бүртгэлтэй байна');
  }
  const child = await Child.update(
    {
      firstname,
      lastname,
      rd,
      user_id: parentId,
      group_id: groupId,
      gender,
      birthday,
      address,
    },
    { where: { id } }
  );
  if (!child) {
    throw new Error('Алдаа гарлаа');
  }
  res.send({
    success: true,
    message: 'Хүүхэд амжилттай өөрчиллөө',
  });
});
const childDelete = catchAsync(async (req, res) => {
  const { id } = req.params;
  const child = await Child.destroy({ where: { id } });
  if (!child) {
    throw new Error('Хэрэглэгч олдсонгүй');
  }
  res.send({
    success: true,
    message: 'Хүүхэд амжилттай устгагдлаа',
  });
});
module.exports = {
  groupList,
  groupAdd,
  groupDelete,
  groupEdit,
  userList,
  userAdd,
  userDelete,
  userEdit,
  parentList,
  parentAdd,
  parentEdit,
  parentDelete,
  childList,
  childAdd,
  childEdit,
  childDelete,
};
