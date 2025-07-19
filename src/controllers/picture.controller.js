const catchAsync = require('../utils/catchAsync');
const { uploadToS3 } = require('../utils/functions/fileUpload');

const uploadTest = catchAsync(async (req, res) => {
  const pictureToUpload = req.files.picture;
  const uploadResult = await uploadToS3('tes-report', pictureToUpload);
  if (!uploadResult) {
    res.send({
      success: false,
      message: 'picture not uploaded',
    });
  }
  res.send({
    success: true,
    message: 'picture uploaded',
    data: uploadResult.url,
  });
});

module.exports = {
  uploadTest,
};
