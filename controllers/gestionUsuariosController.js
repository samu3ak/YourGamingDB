const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Administrador - Gestión de usuarios"
};

exports.gestionUsuarios = async (req, res) => {
    // Recogida de usuarios registrados con rol de usuario
    const Users = await Usuario.findAll({ where: { rol: "usuario" }, raw: true }); 
    res.render("gestionUsuarios", { title: params.title, usuario: req.session.usuario, usuarios: Users });
};