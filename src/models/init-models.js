var DataTypes = require("sequelize").DataTypes;
var _truck_status = require("./truck_status");

function initModels(sequelize) {
  var truck_status = _truck_status(sequelize, DataTypes);


  return {
    truck_status,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
