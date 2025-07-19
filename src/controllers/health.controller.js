const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Health = db.health;

const getHealth = catchAsync(async (req, res) => {
  const { userId } = req;
  const health = await Health.findOne({
    where: {
      user_id: userId,
    },
  });

  res.send({
    success: true,
    message: 'Health fetched successfully',
    data: health ?? [],
  });
});

const addHealth = catchAsync(async (req, res) => {
  const { userId } = req;
  const { title, description } = req.body;

  const health = await Health.findOne({ where: { user_id: userId } });

  if (health) {
    await Health.update({ user_id: userId, title, description }, { where: { user_id: userId } });
  } else {
    await Health.create({ user_id: userId, title, description });
  }

  res.send({
    success: true,
    message: 'Health has been added successfully',
  });
});

module.exports = { getHealth, addHealth };
