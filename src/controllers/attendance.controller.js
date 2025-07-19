/* eslint-disable prefer-template */
/* eslint-disable no-param-reassign */
const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Attendance = db.attendance;
const Child = db.child; // Assuming 'child' table is represented by the Child model

const isWeekend = (date) => {
  const day = new Date(date).getDay();
  return day === 0 || day === 6;
};

function isToday(date) {
  const today = new Date();

  return (
    date.getDate() === today.getDate() && date.getMonth() === today.getMonth() && date.getFullYear() === today.getFullYear()
  );
}

const getAttendance = catchAsync(async (req, res) => {
  const { groupId } = req;
  const { childId } = req.query;
  let { startDate, endDate } = req.query;

  const now = new Date();
  if (!startDate) {
    startDate = new Date(now.getFullYear(), now.getMonth(), 1);
    startDate.setHours(startDate.getHours() + 8);
  } else {
    startDate = new Date(startDate);
  }
  if (!endDate) {
    endDate = new Date(now.getFullYear(), now.getMonth() + 1, 0);
    endDate.setHours(endDate.getHours() + 8);
  } else {
    endDate = new Date(endDate);
  }

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
    childMap[child.id] = { name: child.lastname + ' ' + child.firstname };
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

    if (!Object.keys(attendanceMap).includes(date)) {
      attendanceMap[date] = {};
    }
    attendanceMap[date][eachChildId] = attd;
  });

  const returnData = [];

  const currentDate = new Date(startDate);
  while (currentDate <= endDate && currentDate <= new Date()) {
    const attendees = [];
    const dateString = currentDate.toLocaleDateString('en-CA'); // "YYYY-MM-DD"
    const isDateToday = isToday(currentDate);
    const isDateWeekend = isWeekend(dateString);

    groupChildren.forEach((child) => {
      const attd = {};
      const eachChildId = child.id;

      attd.id = eachChildId;
      attd.name = child.firstname + ' ' + child.lastname;
      if (isDateWeekend) {
        attd.status = 'rest';
      } else if (attendanceMap?.[dateString]?.[eachChildId]) {
        attd.status = attendanceMap[dateString][eachChildId].status;
      } else if (isDateToday) {
        attd.status = 'normal';
      } else {
        attd.status = 'absent';
      }

      attd.description = attendanceMap?.[dateString]?.[eachChildId]?.request_description ?? null;
      attendees.push(attd);
    });

    returnData.push({ date: dateString, attendees });
    currentDate.setDate(currentDate.getDate() + 1);
  }

  res.send({
    success: true,
    message: 'Attendance data fetched successfully',
    data: returnData,
  });
});

const addAttendance = catchAsync(async (req, res) => {
  const { childId, date, status, requestDescription } = req.body;
  const checkAttendance = await Attendance.findOne({
    where: { child_id: childId, date },
  });
  let action;
  if (checkAttendance) {
    action = await Attendance.update(
      {
        status,
        request_description: requestDescription ?? null,
      },
      { where: { child_id: childId, date } }
    );
  } else {
    action = await Attendance.create({
      date,
      child_id: childId,
      status,
      request_description: requestDescription ?? null,
    });
  }

  res.send({
    success: true,
    message: 'Attendance record added successfully',
    data: action,
  });
});

// const editAttendance = catchAsync(async (req, res) => {
//   const { date, childId, status, requestDescription } = req.body;
//   const attendance = await Attendance.update(
//     {
//       date,
//       status,
//       request_description: requestDescription ?? null,
//     },
//     { where: { child_id: childId, date } }
//   );

//   res.send({
//     success: true,
//     message: 'Attendance record updated successfully',
//     data: attendance,
//   });
// });
module.exports = { getAttendance, addAttendance };
