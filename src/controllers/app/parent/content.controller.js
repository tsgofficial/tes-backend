const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Contents = db.contents;
const ContentCategory = db.contentCategory;
const ContentSection = db.contentSection;
const Child = db.child;
const Users = db.users;

const getContent = catchAsync(async (req, res) => {
  try {
    const { childId } = req.query;

    const child = await Child.findOne({
      where: { id: childId },
      attributes: ['kinder_id', 'group_id'],
      raw: true,
    });
    if (!child) {
      res.send({
        success: true,
        message: 'Contents fetched successfully',
        data: [],
      });
      return;
    }

    const teacher = await Users.findOne({
      where: { kinder_id: child.kinder_id, group_id: child.group_id },
      attributes: ['id'],
      raw: true,
    });
    if (!teacher) {
      res.send({
        success: true,
        message: 'Contents fetched successfully',
        data: [],
      });
      return;
    }

    const categories = await ContentCategory.findAll({});
    const reports = await Contents.findAll({
      where: { user_id: teacher.id },
      include: [{ model: ContentSection, as: 'sections' }],
      order: [['id', 'DESC']],
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
  } catch (e) {
    res.send({
      success: false,
      message: 'Ямар нэг алдаа гарлаа',
      error: e,
    });
  }
});

module.exports = { getContent };
