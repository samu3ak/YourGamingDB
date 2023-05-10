const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Administrador - Gestión de usuarios"
};

exports.gestionUsuarios = async (req, res, next) => {
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    // Recogida de usuarios registrados con rol de usuario
    const Users = await Usuario.findAll({ where: { rol: "usuario" }, raw: true });

    // Comprobación permisos y renderizado
    if (usuarioLogueado !== null && usuarioLogueado.rol === "administrador") {
        res.render("gestionUsuarios", { title: params.title, usuario: usuarioLogueado, usuarios: Users });
    } else {
        params.title = "YGDB - Error";
        res.render("errorPermisos", { title: params.title });
    }
};