/* eslint-disable no-param-reassign */
const db = require('../models');
const catchAsync = require('../utils/catchAsync');
const { uploadToS3, uploadDocumentToS3 } = require('../utils/functions/fileUpload');

const Reports = db.reports;
const ReportSection = db.reportSection;
const ReportCategory = db.reportCategory;

const getCategory = catchAsync(async (req, res) => {
  const reportCategories = await ReportCategory.findAll({});

  res.send({
    success: true,
    message: 'Reports fetched successfully',
    data: reportCategories,
  });
});

const getReport = catchAsync(async (req, res) => {
  let sentData = [];
  let receivedData = [];

  if (req.roleId === 2 || req.roleId === 3) {
    receivedData = await Reports.findAll({
      where: { kinder_id: req.kinderId, type: 'sent' },
      include: [{ model: ReportSection, as: 'sections' }],
      order: [['created_date', 'DESC']],
    });

    receivedData.forEach((report) => {
      report.sections.forEach((section) => {
        if (section.images) {
          section.images = section.images.split(',');
        } else {
          section.images = [];
        }
      });
    });
  }

  // Search by user_id and store in sentData
  sentData = await Reports.findAll({
    where: { user_id: req.userId },
    include: [{ model: ReportSection, as: 'sections' }],
    order: [['created_date', 'DESC']],
  });

  sentData.forEach((report) => {
    report.sections.forEach((section) => {
      if (section.images) {
        section.images = section.images.split(',');
      } else {
        section.images = [];
      }
    });
  });

  res.send({
    success: true,
    message: 'Reports fetched successfully',
    data: {
      sentData,
      receivedData, // Only populated if roleId is 2 or 3
    },
  });
});

const detailReport = catchAsync(async (req, res) => {
  const { id } = req.params;
  const report = await Reports.findByPk(id, {
    include: [{ model: ReportSection, as: 'sections' }],
  });
  res.send({
    success: true,
    message: 'Report fetched successfully',
    data: report,
  });
});
const addReport = catchAsync(async (req, res) => {
  const { userId, title, description, startDate, endDate, categoryId, contentId, type, length } = req.body;

  const { docFile } = req.files ?? {};
  let docUploadResult = {};
  if (docFile) {
    docUploadResult = await uploadDocumentToS3('tes-report', docFile);
  }

  const report = await Reports.create({
    type,
    title,
    description,
    user_id: userId,
    category_id: categoryId,
    content_id: contentId,
    start_date: startDate,
    end_date: endDate,
    file: docUploadResult.url,
    file_name: docFile?.name,
    mimetype: docFile?.mimetype,
  });

  const sections = await Promise.all(
    Array.from({ length }, async (_, i) => {
      const sectionDescription = req.body[`sections[${i}].description`] || null;
      const sectonUrl = req.body[`sections[${i}].url`] || null;

      let imageUrls = [];
      const { images } = req.files ?? {};
      if (images) {
        let imageFiles = [];

        if (Array.isArray(images)) {
          imageFiles =
            images.filter((file) => {
              return file.name && file.name.startsWith(`sections[${i}]`);
            }) || [];
        } else if (images.name && images.name.startsWith(`sections[${i}]`)) {
          imageFiles = [images];
        }

        imageUrls = (
          await Promise.all(
            imageFiles.map(async (imageFile) => {
              try {
                const uploadResult = await uploadToS3('tes-report', imageFile);
                if (uploadResult.success) return uploadResult.url;
              } catch (error) {
                return null;
              }
            })
          )
        ).filter(Boolean);
      }

      return {
        report_id: report.id,
        description: sectionDescription,
        images: imageUrls.join(','),
        url: sectonUrl,
      };
    })
  );

  if (sections.length > 0) {
    await ReportSection.bulkCreate(sections);
  }

  res.send({
    success: true,
    message: 'Тайлан амжилттай үүсгэлээ',
  });
});

const actReport = catchAsync(async (req, res) => {
  const { id, action } = req.params;
  const updatedRow = await Reports.update({ type: action }, { where: { id } });
  if (!updatedRow) {
    throw new Error('Failed to update report');
  }
  res.send({
    success: true,
    message: `Тайланг амжилттай ${action === 'approved' ? 'баталгаажууллаа' : 'татгалзлаа'}`,
  });
});

const deleteReport = catchAsync(async (req, res) => {
  const { id } = req.params;
  const report = await Reports.findByPk(id);

  if (!report) {
    return res.status(404).send({
      success: false,
      message: 'Тайлан олдсонгүй',
    });
  }

  const reportSectionsRow = await ReportSection.destroy({
    where: { report_id: report.id },
  });

  const reportRow = await report.destroy();

  if (!reportSectionsRow || !reportRow) {
    throw new Error('Failed to delete report sections');
  }
  res.send({
    success: true,
    message: 'Тайлан амжилттай устгагдлаа',
  });
});

const editReport = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { userId, title, description, startDate, endDate, categoryId, contentId, type, length } = req.body;

  const { docFile } = req.files ?? {};
  let docUploadResult = {};

  const report = await Reports.findByPk(id);

  if (!report) {
    return res.status(404).send({
      success: false,
      message: 'Report not found',
    });
  }

  if (docFile) {
    docUploadResult = await uploadDocumentToS3('tes-report', docFile);
  }

  // Update the report details
  await report.update({
    type,
    title,
    description,
    user_id: userId,
    category_id: categoryId,
    content_id: contentId,
    start_date: startDate,
    end_date: endDate,
    file: docUploadResult.url ?? report.file,
    file_name: docFile?.name ?? report.file_name,
    mimetype: docFile?.mimetype ?? report.mimetype,
  });

  const sections = await Promise.all(
    Array.from({ length }, async (_, i) => {
      const sectionDescription = req.body[`sections[${i}].description`] || null;
      const sectonUrl = req.body[`sections[${i}].url`] || null;

      let imageUrls = [];
      const { images } = req.files ?? {};
      if (images) {
        let imageFiles = [];

        if (Array.isArray(images)) {
          imageFiles =
            images.filter((file) => {
              return file.name && file.name.startsWith(`sections[${i}]`);
            }) || [];
        } else if (images.name && images.name.startsWith(`sections[${i}]`)) {
          imageFiles = [images];
        }

        imageUrls = (
          await Promise.all(
            imageFiles.map(async (imageFile) => {
              try {
                const uploadResult = await uploadToS3('tes-report', imageFile);
                if (uploadResult.success) return uploadResult.url;
              } catch (error) {
                return null;
              }
            })
          )
        ).filter(Boolean);
      }

      return {
        report_id: report.id,
        description: sectionDescription,
        images: imageUrls.join(','),
        url: sectonUrl,
      };
    })
  );

  if (sections.length > 0) {
    await ReportSection.destroy({
      where: { report_id: report.id },
    });
    await ReportSection.bulkCreate(sections);
  }

  res.send({
    success: true,
    message: 'Тайлан амжилттай шинэчлэгдлээ',
  });
});

module.exports = { addReport, getReport, detailReport, getCategory, actReport, deleteReport, editReport };
