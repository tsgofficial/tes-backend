var DataTypes = require("sequelize").DataTypes;
var _delivery_locations = require("./delivery_locations");

function initModels(sequelize) {
  var delivery_locations = _delivery_locations(sequelize, DataTypes);


  return {
    delivery_locations,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
