/* eslint-disable no-param-reassign */
const { Op } = require('sequelize');
const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');
const { uploadToS3 } = require('../../../utils/functions/fileUpload');
const saveAndSend = require('../../../utils/functions/notif');

const Child = db.child;
const User = db.users;
const Attendance = db.attendance;

function notifTextMaker(requestType, childRow) {
  switch (requestType) {
    case 'sick':
      return `${childRow.firstname} Өвчтэй хүсэлт ирүүллээ`;
    case 'free':
      return `${childRow.firstname} Чөлөөтэй хүсэлт ирүүллээ`;
    case 'present':
      return `${childRow.firstname} цэцэрлэгтээ ирлээ`;
    case 'absent':
      return `${childRow.firstname} тасалсан байна`;
    default:
      return '';
  }
}

const getStatusText = (status) => {
  switch (status) {
    case 'absent':
      return 'Тасалсан';
    case 'sick':
      return 'Өвчтэй';
    case 'free':
      return 'Чөлөө';
    case 'present':
      return 'Хэвийн';
    default:
      return 'present';
  }
};

const isWeekend = (date) => {
  const day = new Date(date).getDay();
  return day === 0 || day === 6;
};

function isFutureDate(passedDate) {
  const today = new Date();
  const date = new Date(passedDate);

  today.setHours(0, 0, 0, 0);
  date.setHours(0, 0, 0, 0);

  return date > today;
}

function isToday(passedDate) {
  const today = new Date();
  const date = new Date(passedDate);

  return (
    date.getDate() === today.getDate() && date.getMonth() === today.getMonth() && date.getFullYear() === today.getFullYear()
  );
}

const getAttendance = catchAsync(async (req, res) => {
  try {
    const { userId } = req;

    const { date } = req.query;

    const children = await Child.findAll({
      where: { user_id: userId },
      attributes: ['id', 'firstname', 'lastname', 'avatar', 'kinder_id'],
      raw: true,
    });

    const childIds = children.map((child) => child.id);

    const attendance = await Attendance.findAll({
      where: { child_id: { [Op.in]: childIds }, date },
      raw: true,
    });

    const attendanceMap = {};
    attendance.forEach((attd) => {
      const attdDate = attd.date;
      const eachChildId = attd.child_id;

      if (!Object.keys(attendanceMap).includes(attdDate)) {
        attendanceMap[attdDate] = {};
      }
      attendanceMap[attdDate][eachChildId] = attd;
    });

    const isDateToday = isToday(date);
    const isDateWeekend = isWeekend(date);
    const isDateFutureDate = isFutureDate(date);

    children.forEach((child) => {
      const eachChildId = child.id;

      if (isDateWeekend) {
        child.status = 'rest';
        child.status_text = 'Амралт';
      } else if (attendanceMap?.[date]?.[eachChildId]) {
        const { status, request_description } = attendanceMap[date][eachChildId];
        child.status = status;
        child.status_text = getStatusText(status);
        child.request_description = request_description;
      } else if (isDateToday) {
        child.status = 'available';
      } else if (isDateFutureDate) {
        child.status = 'normal';
        child.status_text = 'Хичээлийн өдөр';
      } else {
        child.status = 'absent';
        child.status_text = 'Тасалсан';
      }
    });

    res.status(200).json({
      success: true,
      data: children,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const getRequests = catchAsync(async (req, res) => {
  try {
    const { childId } = req.query;

    const requests = await Attendance.findAll({
      where: { child_id: childId, status: { [Op.in]: ['sick', 'free'] } },
      order: [['id', 'DESC']],
      raw: true,
    });

    requests.forEach((request) => {
      request.status_text = getStatusText(request.status);
    });

    res.status(200).json({
      success: true,
      data: requests,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const createAttendance = catchAsync(async (req, res) => {
  try {
    const { childId, kinderId, requestType, requestDescription } = req.body;
    const { picture } = req.files || {};
    if (requestType !== 'sick' && requestType !== 'free') {
      const child = await Child.findOne({ where: { id: childId }, attributes: ['kinder_id'], raw: true });
      if (kinderId !== child.kinder_id) {
        res.status(200).json({
          success: false,
          message: 'Хүүхдийн цэцэрлэг таарахгүй байна',
        });
        return;
      }
    }
    const childRow = await Child.findOne({ where: { id: childId }, attributes: ['firstname', 'group_id'], raw: true });
    const teacherRow = await User.findOne({
      where: { group_id: childRow.group_id },
      raw: true,
    });

    const attendance = await Attendance.create({
      child_id: childId,
      date: new Date(),
      request_description: requestDescription,
      status: requestType,
      picture: picture ? (await uploadToS3('tes-attendance', picture)).url : undefined,
    });

    if (attendance) {
      const notifText = notifTextMaker(requestType, childRow);
      const notifTitle = 'Ирцийн мэдээлэл';
      await saveAndSend(teacherRow.device_token, { title: notifTitle, text: notifText }, teacherRow.id);
    }

    res.status(200).json({
      success: true,
      data: attendance,
    });
  } catch (error) {
    console.log(error);
    res.status(200).json({ success: false, message: error });
  }
});

module.exports = { getAttendance, createAttendance, getRequests };
