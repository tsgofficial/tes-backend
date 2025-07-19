var DataTypes = require("sequelize").DataTypes;
var _payment = require("./payment");

function initModels(sequelize) {
  var payment = _payment(sequelize, DataTypes);


  return {
    payment,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
