const db = require('../models');
const catchAsync = require('../utils/catchAsync');
const { uploadDocumentToS3, uploadToS3 } = require('../utils/functions/fileUpload');

const Contents = db.contents;
const ContentSection = db.contentSection;
const ContentCategory = db.contentCategory;

async function upload(file) {
  const mimeType = file.mimetype;

  let docUploadResult;

  if (mimeType.startsWith('image/')) {
    docUploadResult = await uploadToS3('tes-content', file);
  } else {
    docUploadResult = await uploadDocumentToS3('tes-content', file);
  }

  return docUploadResult;
}

const getContent = catchAsync(async (req, res) => {
  const categories = await ContentCategory.findAll({});

  const reports = await Contents.findAll({
    where: { user_id: req.userId },
    include: [{ model: ContentSection, as: 'sections' }],
  });

  const returnData = reports.map((report) => {
    const reportData = report.toJSON();

    const sections = {};

    categories.forEach((category) => {
      const reportSections = Array.isArray(reportData.sections) ? reportData.sections : [];

      sections[category.code] = reportSections
        .filter((section) => section.category_id === category.id)
        .map((section) => {
          return {
            ...section,
            file: section.file ? section.file.split(',') : [],
          };
        });
    });

    return { ...reportData, sections };
  });

  res.send({
    success: true,
    message: 'Contents fetched successfully',
    data: returnData,
  });
});

const addContent = catchAsync(async (req, res) => {
  const { userId } = req;
  const { title, description, startDate, endDate, type } = req.body;

  const content = await Contents.create({
    type,
    title,
    description,
    user_id: userId,
    start_date: startDate,
    end_date: endDate,
  });

  const categories = await ContentCategory.findAll({
    attributes: ['id', 'code'],
  });

  const getSectionLength = (sectionCode) => {
    let length = 0;

    const hasDescriptionOrFiles = (givenLength) => {
      return (
        req.body[`${sectionCode}sections[${givenLength}].description`] ||
        Object.keys(req.files).filter((fileKey) => fileKey.startsWith(`${sectionCode}sections[${givenLength}].files`))
          .length > 0
      );
    };

    while (hasDescriptionOrFiles(length)) {
      length += 1;
    }

    return length;
  };

  const getSectionFilesLength = (sectionCode, sectionIndex) => {
    let length = 0;
    while (req.files[`${sectionCode}sections[${sectionIndex}].files[${length}]`]) {
      length += 1;
    }
    return length;
  };

  const createSections = async (category) => {
    const sectionCode = category.code;
    const sectionLength = getSectionLength(sectionCode);

    const sections = await Promise.all(
      Array.from({ length: sectionLength }, async (_, i) => {
        const sectionDescription = req.body[`${sectionCode}sections[${i}].description`] || null;
        const sectionFilesLength = getSectionFilesLength(sectionCode, i);

        const uploadPromises = [];
        for (let j = 0; j < sectionFilesLength; j += 1) {
          const file = req.files[`${sectionCode}sections[${i}].files[${j}]`];
          uploadPromises.push(upload(file));
        }

        const uploadResults = await Promise.all(uploadPromises);

        const uploadedFiles = [];
        uploadResults.forEach((uploadResult) => {
          if (uploadResult.url) {
            uploadedFiles.push(uploadResult.url);
          }
        });

        return {
          content_id: content.id,
          category_id: category.id,
          description: sectionDescription,
          file: uploadedFiles.join(','),
        };
      })
    );

    if (sections.length > 0) {
      await ContentSection.bulkCreate(sections);
    }
  };

  await Promise.all(categories.map(createSections));

  res.send({
    success: true,
    message: 'Content has been added successfully',
  });
});

module.exports = { getContent, addContent };
