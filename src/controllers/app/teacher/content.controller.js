const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Contents = db.contents;
const ContentCategory = db.contentCategory;
const ContentSection = db.contentSection;

const getContent = catchAsync(async (req, res) => {
  try {
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
  } catch (error) {
    console.log(error);
  }
});
module.exports = { getContent };
