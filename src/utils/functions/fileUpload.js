const { S3Client, PutObjectCommand } = require('@aws-sdk/client-s3');
const sharp = require('sharp');
const { v4: uuidv4 } = require('uuid'); // Import the uuid package
const path = require('path'); // To get the file extension

// Create an S3 client
const s3Client = new S3Client({
  region: process.env.AWS_REGION,
  credentials: {
    accessKeyId: process.env.AWS_ACCESS_KEY_ID,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  },
});

/**
 * Shrinks (compresses) the image and uploads it to the given S3 bucket.
 *
 * @param {string} bucketName - The name of the S3 bucket.
 * @param {Object} file - The file object to be uploaded, expects 'data' buffer, 'mimetype', and 'name'.
 * @returns {Promise} - Resolves with the S3 upload result or rejects with an error.
 */
const uploadToS3 = async (bucketName, file) => {
  try {
    const compressedImageBuffer = await sharp(file.data)
      .resize({ width: 800 }) // Resize to a max width of 800px (change size as needed)
      .toBuffer();

    const today = new Date();
    const dateString = today.toISOString().split('T')[0];

    const fileExtension = path.extname(file.name);
    const uniqueFileName = `${uuidv4()}${fileExtension}`;

    const filePath = `pictures/${dateString}/${uniqueFileName}`;

    const params = {
      Bucket: bucketName,
      Key: filePath,
      Body: compressedImageBuffer,
      ContentType: file.mimetype,
    };

    const uploadResult = await s3Client.send(new PutObjectCommand(params));

    return {
      success: true,
      message: 'File uploaded successfully',
      data: uploadResult,
      url: `https://${bucketName}.s3.${process.env.AWS_REGION}.amazonaws.com/${filePath}`,
    };
  } catch (error) {
    throw new Error(`Failed to upload the file to S3: ${error.message}`);
  }
};

const uploadDocumentToS3 = async (bucketName, file) => {
  try {
    const today = new Date();
    const dateString = today.toISOString().split('T')[0];

    const fileExtension = path.extname(file.name);
    const uniqueFileName = `${uuidv4()}${fileExtension}`;

    const filePath = `docs/${dateString}/${uniqueFileName}`;

    const params = {
      Bucket: bucketName,
      Key: filePath,
      Body: file.data, // Directly use the file data without processing
      ContentType: file.mimetype,
    };

    const uploadResult = await s3Client.send(new PutObjectCommand(params));

    return {
      success: true,
      message: 'Document uploaded successfully',
      data: uploadResult,
      url: `https://${bucketName}.s3.${process.env.AWS_REGION}.amazonaws.com/${filePath}`,
    };
  } catch (error) {
    throw new Error(`Failed to upload the document to S3: ${error.message}`);
  }
};

module.exports = { uploadToS3, uploadDocumentToS3 };
