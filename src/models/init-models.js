var DataTypes = require("sequelize").DataTypes;
var _inspector_status = require("./inspector_status");

function initModels(sequelize) {
  var inspector_status = _inspector_status(sequelize, DataTypes);


  return {
    inspector_status,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
