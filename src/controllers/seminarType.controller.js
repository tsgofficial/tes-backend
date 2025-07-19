const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const SeminarType = db.seminarTypes;

const getType = catchAsync(async (req, res) => {
  const seminars = await SeminarType.findAll({
    attributes: ['id', 'name'],
  });

  res.send({
    success: true,
    message: 'Seminar types fetched successfully',
    data: seminars,
  });
});

const addType = catchAsync(async (req, res) => {
  const { name } = req.body;
  if (!name) {
    return res.status(400).send({
      success: false,
      message: 'All fields are required',
    });
  }

  const newSeminar = await SeminarType.create({
    name,
    shortname: 'custom',
  });

  res.status(200).send({
    success: true,
    message: 'Сургалтын төрөл амжилттай үүслээ',
    data: newSeminar,
  });
});

const editType = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;

  const seminar = await SeminarType.findByPk(id);
  if (!seminar) {
    return res.status(404).send({
      success: false,
      message: 'Seminar not found',
    });
  }

  await seminar.update({
    name,
  });

  res.send({
    success: true,
    message: 'Сургалтын төрөл амжилттай шинэчлэгдлээ',
    data: seminar,
  });
});

const deleteType = catchAsync(async (req, res) => {
  const { id } = req.params;

  const seminar = await SeminarType.findByPk(id);
  if (!seminar) {
    return res.status(404).send({
      success: false,
      message: 'Seminar not found',
    });
  }

  await seminar.destroy();

  res.send({
    success: true,
    message: 'Амжилттй устгалаа',
  });
});

module.exports = { getType, addType, editType, deleteType };
