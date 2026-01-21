const db = require('../models');

const Warehouses = db.warehouses;
const WarehouseContainers = db.warehouse_containers;

const getWarehouseDetails = async (req, res) => {
  const { id } = req.user;

  const warehouse = await Warehouses.findOne({
    where: {
      user_id: id,
    },
    include: [
      {
        model: WarehouseContainers,
        as: 'containers',
      },
    ],
  });

  if (!warehouse) {
    return res.status(404).send({
      success: false,
      message: 'Warehouse not found',
    });
  }

  res.send({
    success: true,
    data: warehouse,
  });
};

const updateWarehouse = async (req, res) => {
  const { id } = req.user;

  const { name, containers } = req.body;

  const warehouse = await Warehouses.findOne({
    where: {
      user_id: id,
    },
  });
  if (!warehouse) {
    return res.status(404).send({
      success: false,
      message: 'Warehouse not found',
    });
  }

  await Warehouses.update({ name }, { where: { id: warehouse.id } });

  for (const container of containers) {
    if (container.id) {
      await WarehouseContainers.update(
        { current_volume: container.current_volume, volume: container.volume, fuel_type_id: container.fuel_type_id },
        { where: { id: container.id } }
      );
    } else {
      await WarehouseContainers.create({
        warehouse_id: warehouse.id,
        volume: container.volume,
        fuel_type_id: container.fuel_type_id,
        current_volume: container.current_volume,
      });
    }
  }

  res.send({
    success: true,
    message: 'Warehouse containers updated successfully',
  });
};

const createWarehouse = async (req, res) => {
  const { id } = req.user;
  const { name, containers } = req.body;

  const existingWarehouse = await Warehouses.findOne({
    where: {
      user_id: id,
    },
  });

  if (existingWarehouse) {
    return res.status(400).send({
      success: false,
      message: 'Warehouse already exists for this user',
    });
  }

  const warehouse = await Warehouses.create({ name, user_id: id });

  await WarehouseContainers.bulkCreate(
    containers.map((container) => ({
      warehouse_id: warehouse.id,
      volume: container.volume,
      fuel_type_id: container.fuel_type_id,
      current_volume: container.current_volume,
    }))
  );

  res.send({
    success: true,
    message: 'Warehouse created successfully',
  });
};

module.exports = { getWarehouseDetails, updateWarehouse, createWarehouse };
