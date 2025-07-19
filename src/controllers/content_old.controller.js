const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Contents = db.contents;
const ContentCategories = db.content_categories;

const getContents = catchAsync(async (req, res) => {
  const { kinderId } = req;
  const contents = await Contents.findAll({
    attributes: ['id', 'title', 'description', 'image', 'youtube', 'file', 'created_date'],
    where: {
      kinder_id: kinderId,
    },
    include: [
      {
        model: ContentCategories,
        as: 'contentCategory',
        attributes: ['id', 'name'],
      },
    ],
  });

  const sendContent = contents.map((content) => ({
    id: content.id,
    title: content.title,
    description: content.description,
    image: content.image,
    youtube: content.youtube,
    file: content.file,
    created_date: content.created_date,
    contentCategory: content.contentCategory?.name || null,
  }));

  res.send({
    success: true,
    message: 'Content types fetched successfully',
    data: sendContent,
  });
});

module.exports = { getContents };
