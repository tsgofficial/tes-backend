const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Seminars = db.seminars;

const getSeminar = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { kinderId } = req;
  const seminars = await Seminars.findAll({
    attributes: ['id', 'name', 'coordinates', 'seminar_date'],
    where: {
      type: id,
      kinder_id: kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Seminar types fetched successfully',
    data: seminars,
  });
});

const addSeminar = catchAsync(async (req, res) => {
  const { name, coordinates, seminarDate, type } = req.body;
  const { kinderId } = req;

  if (!name || !coordinates || !seminarDate || !type) {
    return res.status(400).send({
      success: false,
      message: 'All fields are required',
    });
  }

  const newSeminar = await Seminars.create({
    name,
    coordinates,
    seminar_date: seminarDate,
    type,
    kinder_id: kinderId,
  });

  res.status(200).send({
    success: true,
    message: 'Сургалт амжилттай үүслээ',
    data: newSeminar,
  });
});

const editSeminar = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { name, coordinates, seminarDate, type } = req.body;

  const seminar = await Seminars.findByPk(id);
  if (!seminar) {
    return res.status(404).send({
      success: false,
      message: 'Seminar not found',
    });
  }

  await seminar.update({
    name,
    coordinates,
    seminar_date: seminarDate,
    type,
  });

  res.send({
    success: true,
    message: 'Сургалт шинэчлэгдлээ',
    data: seminar,
  });
});

const deleteSeminar = catchAsync(async (req, res) => {
  const { id } = req.params;

  const seminar = await Seminars.findByPk(id);
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

module.exports = { getSeminar, addSeminar, editSeminar, deleteSeminar };
