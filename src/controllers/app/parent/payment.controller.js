const db = require('../../../models');
const catchAsync = require('../../../utils/catchAsync');

const Child = db.child;
const Payment = db.payment;

const getPayments = catchAsync(async (req, res) => {
  try {
    const { childId } = req.query;

    const child = await Child.findOne({
      where: { id: childId },
      attributes: ['kinder_id', 'group_id'],
      raw: true,
    });

    if (!child) {
      res.status(200).json({
        success: true,
        message: 'Хүүхэд олдсонгүй',
      });
      return;
    }
    const payments = await Payment.findAll({
      where: { kinder_id: child.kinder_id, group_id: child.group_id },
      order: [['id', 'DESC']],
    });

    res.status(200).json({
      success: true,
      data: payments,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const createInvoice = catchAsync(async (req, res) => {
  try {
    const { paymentId, invoiceId } = req.body;

    await Payment.update({ invoice_id: invoiceId }, { where: { id: paymentId } });
    res.status(200).json({
      success: true,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

const setPaid = catchAsync(async (req, res) => {
  try {
    const { paymentId, invoiceId } = req.body;
    const date = new Date();

    await Payment.update({ status: 'paid', paid_date: date }, { where: { id: paymentId, invoice_id: invoiceId } });
    res.status(200).json({
      success: true,
    });
  } catch (e) {
    res.status(200).json({ success: false, message: 'Ямар нэг алдаа гарлаа', error: e });
  }
});

module.exports = { getPayments, createInvoice, setPaid };
