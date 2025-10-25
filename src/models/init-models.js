var DataTypes = require("sequelize").DataTypes;
var _trucks = require("./trucks");

function initModels(sequelize) {
  var trucks = _trucks(sequelize, DataTypes);


  return {
    trucks,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
