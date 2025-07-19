const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Routine = db.routine;

const getRoutine = catchAsync(async (req, res) => {
  const routine = await Routine.findAll({
    attributes: ['id', 'title', 'start_time', 'end_time'],
    where: {
      kinder_id: req.kinderId,
    },
    order: [['start_time', 'ASC']],
  });

  res.send({
    success: true,
    message: 'Routine fetched successfully',
    data: routine ?? [],
  });
});

const addRoutine = catchAsync(async (req, res) => {
  const { title, startTime, endTime } = req.body;

  const routine = await Routine.create({
    title,
    start_time: startTime,
    end_time: endTime,
    kinder_id: req.kinderId,
  });

  res.send({
    success: true,
    message: 'Routine added successfully',
    data: routine,
  });
});

const editRoutine = catchAsync(async (req, res) => {
  const { id, title, startTime, endTime } = req.body;

  const routine = await Routine.update(
    {
      title,
      start_time: startTime,
      end_time: endTime,
    },
    {
      where: {
        id,
        kinder_id: req.kinderId,
      },
    }
  );

  res.send({
    success: true,
    message: 'Routine updated successfully',
    data: routine,
  });
});

const deleteRoutine = catchAsync(async (req, res) => {
  const { id } = req.params;

  await Routine.destroy({
    where: {
      id,
      kinder_id: req.kinderId,
    },
  });

  res.send({
    success: true,
    message: 'Routine deleted successfully',
  });
});

module.exports = { getRoutine, addRoutine, editRoutine, deleteRoutine };
