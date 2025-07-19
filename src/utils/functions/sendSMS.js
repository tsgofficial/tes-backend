const axios = require('axios');
const ApiError = require('../ApiError');

const sendSMS = async (to, message) => {
  const url = process.env.SMS_URL;
  const apiKey = process.env.SMS_API_KEY;
  const from = process.env.SMS_FROM;
  try {
    const response = await axios.get(url, {
      headers: {
        'x-api-key': apiKey,
        'Content-Type': 'application/json',
      },
      params: {
        from,
        to,
        text: message,
      },
    });
    return response.status === 200;
  } catch (error) {
    throw new ApiError(500, error.response.data);
  }
};

module.exports = { sendSMS };
