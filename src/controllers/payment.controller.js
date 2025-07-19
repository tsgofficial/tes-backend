const { Op } = require('sequelize');
const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Child = db.child;
const Payment = db.payment;

const getPayments = catchAsync(async (req, res) => {
  try {
    const { kinderId } = req;
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;
    const offset = (page - 1) * limit;

    const { count, rows: payments } = await Payment.findAndCountAll({
      where: { kinder_id: kinderId },
      order: [['id', 'DESC']],
      limit,
      offset,
      include: [
        {
          model: Child,
          as: 'child',
          attributes: ['firstname', 'lastname'],
        },
      ],
    });

    const formattedPayments = payments.map((payment) => ({
      paymentId: payment.id,
      amount: payment.amount,
      date: payment.createdAt,
      childName: `${payment?.child?.firstname} ${payment?.child?.lastname}`,
      status: payment.status,
      paymentType: payment.payment_type,
      paymentDate: payment.payment_date,
      description: payment.description,
      paidDate: payment.paid_date,
    }));

    res.status(200).json({
      success: true,
      data: formattedPayments,
      pagination: {
        totalItems: count,
        totalPages: Math.ceil(count / limit),
        currentPage: page,
        itemsPerPage: limit,
      },
    });
  } catch (e) {
    console.log(e);
    res.status(500).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const createInvoice = catchAsync(async (req, res) => {
  try {
    const { kinderId } = req;
    const { groupId, childId, amount, description, paymentType, paymentDate } = req.body;

    if (groupId) {
      const children = await Child.findAll({
        where: { group_id: groupId },
        attributes: ['id', 'group_id'],
      });
      const isPaymentExist = await Payment.findAll({
        where: { child_id: { [Op.in]: children.map((child) => child.id) }, payment_date: paymentDate },
        attributes: ['child_id'],
      });
      const existingChildIds = isPaymentExist.map((payment) => payment.child_id);
      const newChildren = children.filter((child) => !existingChildIds.includes(child.id));

      const paymentData = newChildren.map((child) => ({
        child_id: child.id,
        description,
        amount,
        payment_date: paymentDate,
        payment_type: paymentType,
        kinder_id: kinderId,
        status: 'pending',
        group_id: child.group_id,
      }));
      await Payment.bulkCreate(paymentData);

      res.status(200).json({
        success: true,
        message: `Төлбөрийн нэхэмжлэл үүслээ.`,
      });
    } else if (childId) {
      const isPaymentExist = await Payment.findOne({
        where: { child_id: childId, payment_date: paymentDate },
      });
      if (isPaymentExist) {
        return res.status(200).json({ success: false, message: 'Төлбөр аль хэдийн үүссэн байна.' });
      }
      const getGroupId = await Child.findOne({
        where: { id: childId },
        attributes: ['group_id'],
      });
      await Payment.create({
        child_id: childId,
        description,
        amount,
        payment_date: paymentDate,
        payment_type: paymentType,
        kinder_id: kinderId,
        status: 'pending',
        group_id: getGroupId.group_id,
      });
      res.status(200).json({
        success: true,
        message: `Төлбөрийн нэхэмжлэл үүслээ.`,
      });
    } else {
      return res.status(400).json({
        success: false,
        message: 'Групп эсвэл хүүхэд сонгоно уу.',
      });
    }
  } catch (e) {
    console.log(e);
    res.status(500).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const editInvoice = catchAsync(async (req, res) => {
  try {
    const { id } = req.params;
    const { description, amount, paymentType, paymentDate, status } = req.body;

    const isPaymentExist = await Payment.findOne({
      where: { id },
    });

    if (!isPaymentExist) {
      return res.status(200).json({ success: false, message: 'Төлбөр олдсонгүй.' });
    }
    if (paymentDate !== isPaymentExist.payment_date) {
      const isPaymentDateExist = await Payment.findOne({
        where: { payment_date: paymentDate, child_id: isPaymentExist.child_id },
      });
      if (isPaymentDateExist) {
        return res.status(200).json({ success: false, message: 'Тус өдөр төлбөр үүссэн байна.' });
      }
    }

    await Payment.update(
      { description, amount, payment_type: paymentType, payment_date: paymentDate, status },
      { where: { id } }
    );

    res.status(200).json({ success: true, message: 'Төлбөр амжилттай засагдлаа.' });
  } catch (e) {
    console.log(e);
    res.status(500).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const deleteInvoice = catchAsync(async (req, res) => {
  try {
    const { id } = req.params;
    await Payment.destroy({ where: { id } });

    res.status(200).json({ success: true, message: 'Төлбөр амжилттай устгагдлаа.' });
  } catch (e) {
    res.status(500).json({ success: false, message: 'Төлбөр олдсонгүй.', error: e });
  }
});
module.exports = { getPayments, createInvoice, editInvoice, deleteInvoice };
