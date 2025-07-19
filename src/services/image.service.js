const AWS = require('aws-sdk');
const { v4: uuidv4 } = require('uuid');
const path = require('path');

AWS.config.update({
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  region: process.env.AWS_REGION,
});

const s3 = new AWS.S3();

const uploadFileToS3 = async (bucketName, fileBuffer, originalFileName) => {
  const fileExtension = path.extname(originalFileName);
  const uniqueFileName = `${uuidv4()}${fileExtension}`;

  const params = {
    Bucket: bucketName,
    Key: uniqueFileName,
    Body: fileBuffer,
    ACL: 'public-read',
  };

  try {
    const data = await s3.upload(params).promise();
    return { success: true, location: data.Location };
  } catch (err) {
    return { success: false, error: err.message };
  }
};

module.exports = { uploadFileToS3 };
