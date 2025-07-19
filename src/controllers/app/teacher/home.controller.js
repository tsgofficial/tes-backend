const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Contents = db.contents;
const NotificationsUser = db.notificationUser;
const User = db.users;
const Child = db.child;
const getHome = catchAsync(async (req, res) => {
  try {
    const notifCount = await NotificationsUser.count({
      where: { user_id: req.userId, is_read: 0 },
    });
    const messageCount = 0;
    const teacherId = req.userId;
    const teacherRow = await User.findOne({
      where: { id: teacherId },
      attributes: ['group_id', 'firstname', 'lastname'],
    });
    const childCount = await Child.count({
      where: { group_id: teacherRow.group_id },
    });
    const userName = teacherRow.firstname;
    const contentCount = await Contents.count({
      where: { user_id: teacherId },
    });
    res.send({
      success: true,
      message: 'Home fetched successfully',
      data: { notifCount, messageCount, childCount, userName, contentCount },
    });
  } catch (error) {
    console.log(error);
  }
});
module.exports = { getHome };
