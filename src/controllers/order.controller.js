const db = require('../models');
const catchAsync = require('../utils/catchAsync');

const Orders = db.orders;
const OrderDetails = db.order_details;

const getOrders = catchAsync(async (req, res) => {
  const { id } = req.user;

  const orders = await Orders.findAll({
    where: {
      user_id: id,
    },
    include: [
      {
        model: OrderDetails,
        as: 'details',
      },
    ],
  });

  res.send({
    success: true,
    data: orders,
  });
});

const createOrder = catchAsync(async (req, res) => {
  const { id } = req.user;
  const { note, details } = req.body;

  const newOrder = await Orders.create({ note, user_id: id });

  const orderDetails = details.map((detail) => ({
    order_id: newOrder.id,
    volume: detail.volume,
    fuel_type_id: detail.fuel_type_id,
  }));

  await OrderDetails.bulkCreate(orderDetails);

  res.send({
    success: true,
    message: 'Order created successfully',
    data: newOrder,
  });
});

const updateOrder = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { note, status, details } = req.body;

  const existingOrder = await Orders.findByPk(id);
  if (!existingOrder) {
    return res.status(404).send({
      success: false,
      message: 'Order not found',
    });
  }

  await Orders.update({ note, status }, { where: { id } });
  await OrderDetails.destroy({ where: { order_id: id } });

  const orderDetails = details.map((detail) => ({
    order_id: id,
    volume: detail.volume,
    fuel_type_id: detail.fuel_type_id,
  }));

  await OrderDetails.bulkCreate(orderDetails);

  res.send({
    success: true,
    message: 'Order updated successfully',
    data: existingOrder,
  });
});

const deleteOrder = catchAsync(async (req, res) => {
  const { id } = req.params;

  await OrderDetails.destroy({ where: { order_id: id } });
  await Orders.destroy({ where: { id } });

  res.send({
    success: true,
    message: 'Order deleted successfully',
  });
});

module.exports = { getOrders, createOrder, updateOrder, deleteOrder };
