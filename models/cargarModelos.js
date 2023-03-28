const { Sequelize } = require("sequelize");
const DataTypes = require("sequelize").DataTypes;
require("dotenv").config();
const sequelize = new Sequelize(
    process.env.DATABASE,
    process.env.USER,
    process.env.PASSWORD,
    {
        host: process.env.HOST,
        dialect: "mysql"
    });
exports.getModelSequelize = (ruta) => {
    let model = require(ruta)(sequelize, DataTypes);
    return [model, sequelize];
};

exports.getSequelize = () => {
    return sequelize;
};

exports.getModel = (ruta) => {
    return require(ruta)(sequelize, DataTypes);
};