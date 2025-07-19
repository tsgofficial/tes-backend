/* eslint-disable no-console */
const admin = require('firebase-admin');

// Initialize Firebase Admin SDK
const serviceAccount = require('../../data/firebase.json');

if (!admin.apps.length) {
  admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
  });
}

/**
 * Sends a push notification to a specific device.
 * @param {string} deviceToken - The device token to send the notification to.
 * @param {string} title - The title of the notification.
 * @param {string} body - The body text of the notification.
 * @param {Object} [data] - Optional additional data to send with the notification.
 * @returns {Promise} - A promise that resolves with the result of the send operation.
 */
const sendPushNotification = async (deviceToken, title, body, data = {}) => {
  try {
    const message = {
      token: deviceToken,
      notification: {
        title,
        body,
      },
      data,
    };

    const response = await admin.messaging().send(message);
    console.log('Successfully sent notification:', response);
    return response;
  } catch (error) {
    console.error('Error sending notification:', error);
    return null;
  }
};

module.exports = sendPushNotification;
