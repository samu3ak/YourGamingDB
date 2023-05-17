const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Explorar Usuarios",
    errorMsg: ""
};

exports.explorarUsuarios = async (req, res, next) => {
    var busqueda = req.query.nombreUsuario ? req.query.nombreUsuario : "";
    // Recogida de usuarios registrados con rol de usuario
    var Users = await sequelize.query("SELECT nombreUsuario FROM usuario WHERE rol = 'usuario' AND LOWER(nombreUsuario) LIKE ?", { replacements: [`%${busqueda.toLowerCase()}%`], type: sequelize.QueryTypes.SELECT });
    res.render("explorarUsuarios", { title: params.title, usuario: req.session.usuario, usuarios: Users, nombreUsuario: busqueda });
};