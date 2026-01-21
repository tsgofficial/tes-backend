var DataTypes = require("sequelize").DataTypes;
var _warehouse_containers = require("./warehouse_containers");

function initModels(sequelize) {
  var warehouse_containers = _warehouse_containers(sequelize, DataTypes);


  return {
    warehouse_containers,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
