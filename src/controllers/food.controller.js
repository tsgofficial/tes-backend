/* eslint-disable no-plusplus */
const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');
// const { beautyPrinter } = require('../utils/functions/printPretty');

const Food = db.food;
const FoodCategory = db.foodCategory;
const getFood = catchAsync(async (req, res) => {
  const { groupId } = req;

  const currentDate = new Date();

  // Helper function to calculate week start and end dates
  const getWeekRangeFromToday = (date) => {
    const startOfWeek = new Date(date);
    const day = startOfWeek.getDay(); // Get the day of the week (0 = Sunday, 6 = Saturday)
    const diff = day === 0 ? -6 : 1 - day; // Adjust so that Monday is the start of the week
    startOfWeek.setDate(startOfWeek.getDate() + diff); // Set to Monday
    const endOfWeek = new Date(startOfWeek);
    endOfWeek.setDate(startOfWeek.getDate() + 4); // Set to Friday (exclude weekends)
    return `${startOfWeek.toISOString().split('T')[0]} - ${endOfWeek.toISOString().split('T')[0]}`;
  };

  // Generate week ranges for two past weeks, the current week, and three future weeks
  const generateWeekRanges = (startDate) => {
    const weekRanges = [];
    let currentStartDate = new Date(startDate);

    // Add two past weeks
    for (let i = 0; i < 2; i++) {
      currentStartDate.setDate(currentStartDate.getDate() - 7); // Move to the previous week
      weekRanges.unshift(getWeekRangeFromToday(currentStartDate)); // Add to the start of the array
    }

    // Reset to today's week
    currentStartDate = new Date(startDate);
    weekRanges.push(getWeekRangeFromToday(currentStartDate)); // Add current week

    // Add three future weeks
    for (let i = 0; i < 3; i++) {
      currentStartDate.setDate(currentStartDate.getDate() + 7); // Move to the next week
      weekRanges.push(getWeekRangeFromToday(currentStartDate));
    }

    return weekRanges;
  };

  // Helper function to populate dates for weekdays only (Monday to Friday)
  const populateWeekWithDates = (weekStart) => {
    const days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'];
    const weekData = {};
    const currentDay = new Date(weekStart);

    days.forEach((day) => {
      weekData[day] = {
        lunch: {},
        supper: {},
        date: currentDay.toISOString().split('T')[0],
      };
      currentDay.setDate(currentDay.getDate() + 1); // Move to the next day
    });

    return weekData;
  };

  // Get all required week ranges
  const allWeekRanges = generateWeekRanges(currentDate);

  // Retrieve food data from the database
  const foods = await Food.findAll({
    where: {
      group_id: groupId,
      date: {
        [Op.gte]: new Date(allWeekRanges[0].split(' - ')[0]), // Start from the earliest week's start date
      },
      type: {
        [Op.ne]: null,
      },
    },
    include: [{ model: FoodCategory, as: 'foodCategory', attributes: ['id', 'name', 'calorie'] }],
  });

  // Group the food data by week
  const groupedFoods = foods.reduce((acc, food) => {
    const foodDate = new Date(food.date);
    const localFoodDate = new Date(foodDate.toLocaleString('en-US', { timeZone: 'Asia/Ulaanbaatar' }));
    const weekRange = getWeekRangeFromToday(localFoodDate);

    if (!acc[weekRange]) {
      const weekStartDate = new Date(weekRange.split(' - ')[0]);
      acc[weekRange] = {
        weekRange,
        ...populateWeekWithDates(weekStartDate),
        isEdit: false, // Default value
      };
    }

    const dayMapping = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'];

    const dayOfWeek = localFoodDate.getDay();
    if (dayOfWeek >= 1 && dayOfWeek <= 5) {
      const dayKey = dayMapping[dayOfWeek - 1];
      if (food.type === 'lunch') {
        acc[weekRange][dayKey].lunch = {
          name: food.foodCategory.name || '',
          id: food.foodCategory.id,
        };
      }
      if (food.type === 'supper') {
        acc[weekRange][dayKey].supper = {
          name: food.foodCategory.name || '',
          id: food.foodCategory.id,
        };
      }
    }

    return acc;
  }, {});

  // Ensure all week ranges are present in the grouped data
  const completeGroupedFoods = allWeekRanges.reduce((acc, weekRange) => {
    if (!groupedFoods[weekRange]) {
      const weekStartDate = new Date(weekRange.split(' - ')[0]);
      acc[weekRange] = {
        weekRange,
        ...populateWeekWithDates(weekStartDate),
        isEdit: true, // Default for current and future weeks
      };
    } else {
      acc[weekRange] = groupedFoods[weekRange];
    }

    // Determine if the week is editable (current or future weeks)
    const weekStartDate = new Date(weekRange.split(' - ')[0]);
    const currentWeekStartDate = new Date(allWeekRanges[2].split(' - ')[0]); // Current week's start date is always at index 2
    acc[weekRange].isEdit = weekStartDate >= currentWeekStartDate;

    return acc;
  }, {});

  // Convert completeGroupedFoods into an array
  const dietData = Object.values(completeGroupedFoods);

  // Sort the data by week start date in ascending order
  dietData.sort((a, b) => {
    const aWeekStart = new Date(a.weekRange.split(' - ')[0]);
    const bWeekStart = new Date(b.weekRange.split(' - ')[0]);
    return aWeekStart - bWeekStart;
  });

  res.send({
    success: true,
    message: 'Foods fetched successfully',
    data: dietData,
  });
});

const addFood = catchAsync(async (req, res) => {
  const { groupId, kinderId } = req;
  const { name, calorie, description } = req.body;
  const isFoodExist = await FoodCategory.findOne({ where: { group_id: groupId, name } });
  if (isFoodExist) {
    return res.send({
      success: false,
      message: 'Хоол давхцаж байна',
    });
  }
  const createFood = await FoodCategory.create({
    group_id: groupId,
    name,
    calorie,
    description,
    kinder_id: kinderId,
  });
  res.send({
    success: true,
    message: 'Food added successfully',
    data: createFood,
  });
});
const selectFood = catchAsync(async (req, res) => {
  const { groupId, kinderId } = req;
  const { foodId, date, type } = req.body;
  const foodCheck = await Food.findOne({ where: { date, type } });
  if (!foodCheck) {
    await Food.create({
      group_id: groupId,
      food_id: foodId,
      date: new Date(date),
      type,
      kinder_id: kinderId,
    });
  } else {
    await Food.update({ food_id: foodId }, { where: { id: foodCheck.id } });
  }

  res.send({
    success: true,
    message: 'Foods fetched successfully',
    data: foodCheck,
  });
});

const listFood = catchAsync(async (req, res) => {
  const { groupId } = req;
  const food = await FoodCategory.findAll({ where: { group_id: groupId }, attributes: ['id', 'name'] });
  res.send({
    success: true,
    message: 'Foods fetched successfully',
    data: food,
  });
});
module.exports = { getFood, addFood, selectFood, listFood };
