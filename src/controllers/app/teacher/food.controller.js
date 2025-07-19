const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Food = db.food;
const FoodCategory = db.foodCategory;
const getFood = catchAsync(async (req, res) => {
  const { groupId } = req;

  const foods = await Food.findAll({
    where: {
      group_id: groupId,
      type: ['lunch', 'supper'],
    },
    include: [{ model: FoodCategory, as: 'foodCategory', attributes: ['id', 'name'] }],
    order: [['date', 'DESC']],
    limit: 20,
  });

  const returnData = foods.map((food) => {
    return {
      id: food.id,
      date: food.date,
      name: food.foodCategory.name,
      type: food.type === 'lunch' ? 'Өдрийн хоол' : 'Оройн хоол',
    };
  });

  res.send({
    success: true,
    message: 'Foods fetched successfully',
    data: returnData,
  });
});

const detailFood = catchAsync(async (req, res) => {
  const { id } = req.params;
  const food = await Food.findOne({
    where: { id },
    include: [{ model: FoodCategory, as: 'foodCategory', attributes: ['id', 'name', 'calorie', 'description'] }],
  });
  if (!food) {
    return res.send({
      success: false,
      message: 'Хоол олдсонгүй',
    });
  }
  const returnData = {
    id: food.id,
    date: food.date,
    name: food.foodCategory.name,
    calorie: food.foodCategory.calorie,
    description: food.foodCategory.description,
  };
  res.send({
    success: true,
    message: 'Food fetched successfully',
    data: returnData,
  });
});

module.exports = { getFood, detailFood };
