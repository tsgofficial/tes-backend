const db = require('../models');

const Users = db.users;
const Warehouses = db.warehouses;
const WarehouseContainers = db.warehouse_containers;

const getWarehouseDetails = async (req, res) => {
  const { id } = req.user;
  let { warehouse_id } = req.user;

  if (!warehouse_id) {
    const user = await Users.findByPk(id);
    warehouse_id = user.warehouse_id;
  }

  const warehouse = await Warehouses.findByPk(warehouse_id, {
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
  let { warehouse_id } = req.user;

  if (!warehouse_id) {
    const user = await Users.findByPk(id);
    warehouse_id = user.warehouse_id;
  }

  if (!warehouse_id) {
    return res.status(400).send({
      success: false,
      message: 'warehouse_id is required',
    });
  }

  const { name, containers } = req.body;

  const warehouse = await Warehouses.findByPk(warehouse_id);
  if (!warehouse) {
    return res.status(404).send({
      success: false,
      message: 'Warehouse not found',
    });
  }

  warehouse.name = name || warehouse.name;
  await warehouse.save();

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

  const user = await Users.findByPk(id);
  const warehouse = await Warehouses.create({ name });

  user.warehouse_id = warehouse.id;
  await user.save();

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
