const sendPushNotification = require('./sendNotification');
const db = require('../../models');

const Notification = db.notification;
const NotificationUser = db.notificationUser;

async function saveAndSend(deviceToken, notifData, userId) {
  if (deviceToken) await sendPushNotification(deviceToken, notifData.title, notifData.text);
  const notification = await Notification.create({
    title: notifData.title,
    content: notifData.text,
    created_date: new Date(),
  });
  await NotificationUser.create({
    notif_id: notification.id,
    user_id: userId,
    created_date: new Date(),
  });
}
module.exports = saveAndSend;
