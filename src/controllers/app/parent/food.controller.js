const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Food = db.food;

const getFood = catchAsync(async (req, res) => {
  const { groupId } = req;

  const foods = await Food.findAll({
    where: {
      group_id: groupId,
      type: ['lunch', 'supper'],
    },
    order: [['date', 'DESC']], // Order by date in descending order to get the latest records first
    limit: 10, // Limit the result to the latest 5 records
  });

  const returnData = foods.map((food) => {
    return {
      date: food.date,
      name: food.name,
      type: food.type === 'day' ? 'Өдрийн хоол' : 'Оройн хоол',
    };
  });

  res.send({
    success: true,
    message: 'Foods fetched successfully',
    data: returnData,
  });
});

module.exports = { getFood };
