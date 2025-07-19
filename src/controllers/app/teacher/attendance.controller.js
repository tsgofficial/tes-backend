/* eslint-disable no-nested-ternary */
/* eslint-disable no-param-reassign */
const { Op } = require('sequelize');
const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');
const saveAndSend = require('../../../utils/functions/notif');

const Child = db.child;
const Attendance = db.attendance;
const User = db.users;

function notifTextMaker(requestType, teacherName) {
  switch (requestType) {
    case 'sick':
      return `${teacherName} багш таны хүүхдийг Өвчтэйгээр бүртгэлээ`;
    case 'free':
      return `${teacherName} багш таны хүүхдийг Чөлөөтэйгээр бүртгэлээ`;
    case 'present':
      return `${teacherName} багш таны хүүхдийн ирснээр бүртгэлээ`;
    case 'absent':
      return `${teacherName} багш таны хүүхдийг тасалснаар бүртгэлээ`;
    default:
      return '';
  }
}
const getAttendance = catchAsync(async (req, res) => {
  const { groupId } = req;
  const { childId } = req.query;

  const today = new Date();
  const startDate = new Date(today.getFullYear(), today.getMonth(), today.getDate(), 8);
  const endDate = new Date(today.getFullYear(), today.getMonth(), today.getDate(), 23, 59, 59);

  let where = { group_id: groupId };

  if (childId) {
    where = { id: childId };
  }

  const groupChildren = await Child.findAll({
    where,
    attributes: ['id', 'firstname', 'lastname'],
    raw: true,
  });
  const childMap = {};
  const childIds = groupChildren.map((child) => child.id);
  groupChildren.forEach((child) => {
    childMap[child.id] = { name: `${child.lastname} ${child.firstname}` };
  });

  const attendance = await Attendance.findAll({
    where: {
      child_id: { [Op.in]: childIds },
      date: { [Op.between]: [startDate, endDate] },
    },
    raw: true,
  });
  const attendanceMap = {};
  attendance.forEach((attd) => {
    const { date } = attd;
    const eachChildId = attd.child_id;
    const dateString = new Date(date).toLocaleDateString('en-CA');

    if (!Object.keys(attendanceMap).includes(dateString)) {
      attendanceMap[dateString] = {};
    }
    attendanceMap[dateString][eachChildId] = attd;
  });

  const returnData = [];
  const dateString = today.toLocaleDateString('en-CA'); // "YYYY-MM-DD"
  // const isDateWeekend = isWeekend(today);

  const attendees = groupChildren.map((child) => {
    const attd = {};
    const eachChildId = child.id;

    attd.id = eachChildId;
    attd.firstname = child.firstname;
    attd.lastname = child.lastname;
    // if (isDateWeekend) {
    //   attd.status = 'rest';
    // } else if (attendanceMap?.[dateString]?.[eachChildId]) {
    //   attd.status = attendanceMap[dateString][eachChildId].status;
    // } else {
    //   attd.status = 'absent';
    // }
    attd.status = attendanceMap?.[dateString]?.[eachChildId]?.status === 'present';
    // attd.description = attendanceMap?.[dateString]?.[eachChildId]?.request_description ?? null;

    return attd;
  });

  returnData.push({ date: dateString, attendees });

  res.send({
    success: true,
    message: "Today's attendance data fetched successfully",
    data: returnData,
  });
});

const updateAttendance = catchAsync(async (req, res) => {
  const { attendanceUpdates } = req.body;

  const childIds = attendanceUpdates.map((update) => update.childId);

  const today = new Date();
  const dateString = today.toISOString().split('T')[0];
  const existingRecords = await Attendance.findAll({
    where: {
      child_id: { [Op.in]: childIds },
      date: dateString,
    },
    attributes: ['child_id', 'status', 'date'],
    raw: true,
  });
  const existingStatusMap = existingRecords.reduce((acc, record) => {
    acc[record.child_id] = record.status;
    return acc;
  }, {});

  const childrenToUpdateOrCreate = attendanceUpdates
    .map(({ childId, status }) => {
      const newStatus = status ? 'present' : 'absent';

      if (existingStatusMap[childId] !== newStatus) {
        return { id: childId, status: newStatus, date: dateString };
      }

      return null;
    })
    .filter(Boolean);

  if (childrenToUpdateOrCreate.length > 0) {
    await Promise.all(
      childrenToUpdateOrCreate.map(async ({ id, status, date }) => {
        const [attendanceRecord, created] = await Attendance.findOrCreate({
          where: { child_id: id, date },
          defaults: { status },
        });

        if (!created) {
          await attendanceRecord.update({ status });
        }
        const child = await Child.findOne({
          where: { id },
          attributes: ['user_id'],
        });
        const parent = await User.findOne({
          where: { id: child.user_id },
          attributes: ['device_token'],
        });
        const teacher = await User.findOne({
          where: { id: req.userId },
          attributes: ['firstname'],
        });
        await saveAndSend(
          parent.device_token,
          {
            title: 'Өвчтэй байна',
            text: notifTextMaker(status, teacher.firstname),
          },
          child.user_id
        );
      })
    );
  }

  res.send({
    success: true,
    message: 'Амжилттай шинэчиллээ',
    data: childrenToUpdateOrCreate,
  });
});

const getChild = catchAsync(async (req, res) => {
  const { childId } = req.params;

  const child = await Child.findOne({
    where: { id: childId },
    attributes: ['id', 'firstname', 'lastname', 'birthday', 'gender', 'user_id'],
  });
  const parent = await User.findOne({
    where: { id: child.user_id },
    attributes: ['firstname', 'lastname', 'phone'],
    raw: true,
  });
  const gender = child.gender === 'male' ? 'Эр' : child.gender === 'female' ? 'Эм' : null;
  const returnData = {
    firstname: child.firstname,
    lastname: child.lastname,
    birthday: child.birthday,
    gender,
    parent: {
      firstname: parent.firstname,
      lastname: parent.lastname,
      phone: parent.phone,
    },
  };
  res.send({
    success: true,
    message: 'Child fetched successfully',
    data: returnData,
  });
});

module.exports = { getAttendance, updateAttendance, getChild };
