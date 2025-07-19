const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const NotificationsUser = db.notificationUser;
const Notification = db.notification;

const getNotifications = catchAsync(async (req, res) => {
  const notifications = await NotificationsUser.findAll({
    where: { user_id: req.userId },
    include: [
      {
        model: Notification,
        as: 'notification',
        attributes: ['created_date', 'title', 'content'],
        required: true,
      },
    ],
  });

  const returnData = notifications.map((notifUser) => {
    const notif = notifUser.notification;
    return {
      date: notif?.created_date,
      title: notif?.title,
      content: notif?.content,
      isRead: notifUser?.is_read,
    };
  });

  res.send({
    success: true,
    message: 'Notifications fetched successfully',
    data: returnData,
    unreadCount: returnData.filter((notif) => !notif.isRead).length,
  });
});

module.exports = { getNotifications };
