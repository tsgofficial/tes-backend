/* eslint-disable no-param-reassign */
const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Child = db.child;
const Kinders = db.kinders;

const getChildren = catchAsync(async (req, res) => {
  try {
    const id = req.userId;

    const children = await Child.findAll({
      where: { user_id: id },
      attributes: ['id', 'firstname', 'lastname', 'birthday', 'gender', 'avatar'],
      include: [
        {
          model: Kinders,
          as: 'childKinders',
          attributes: ['id', 'name'],
        },
      ],
    });

    children.forEach((child) => {
      child.gender = `${child.gender}` === 'male' ? 'Эрэгтэй' : 'Эмэгтэй';
    });

    res.status(200).json({
      success: true,
      message: 'Children fetched successfully',
      data: children,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэгэн алдаа гарлаа', error: e });
  }
});

module.exports = { getChildren };
