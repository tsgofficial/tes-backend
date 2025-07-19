const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Kinders = db.kinders;
const City = db.city;
const Users = db.users;
const getKinders = catchAsync(async (req, res) => {
  const kinders = await Kinders.findAll({
    attributes: ['id', 'name', 'type', 'address', 'phone', 'email', 'is_active', 'registered_date'],
    include: [
      {
        model: City,
        as: 'city',
        attributes: ['name'],
      },
      {
        model: Users,
        as: 'userKinder',
        attributes: ['id', 'firstname'],
        where: {
          role_id: 2,
        },
        required: false,
      },
    ],
  });
  const sendData = kinders.map((kinder) => {
    return {
      id: kinder.id,
      name: kinder.name,
      type: kinder.type === 2 ? 'Хувийн' : 'Улсын',
      city: kinder.city.name,
      is_active: kinder.is_active,
      address: kinder.address,
      phone: kinder.phone ?? '-',
      email: kinder.email ?? '-',
      director: kinder.userKinder?.[0]?.firstname ?? '-',
      registered_date: kinder.registered_date,
    };
  });

  res.send({
    success: true,
    message: 'Kinders fetched successfully',
    data: sendData,
  });
});

module.exports = { getKinders };
