const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");
const friendManager = require("../services/friendManager.js");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Administrador - Gestión de usuarios",
    errorMsg: ""
};

exports.gestionUsuarios = async (req, res) => {
    var busqueda = req.query.nombreUsuario ? req.query.nombreUsuario : "";
    // Recogida de usuarios registrados con rol de usuario
    var Users = await sequelize.query("SELECT id_usuario, nombreUsuario, correo, baneado, rol FROM usuario WHERE rol = 'usuario' AND LOWER(nombreUsuario) LIKE ?", { replacements: [`%${busqueda.toLowerCase()}%`], type: sequelize.QueryTypes.SELECT });
    res.render("gestionUsuarios", { title: params.title, usuario: req.session.usuario, usuarios: Users, nombreUsuario: busqueda });
};

exports.gestionarUsuario = async (req, res) => {
    const usuarioGestionar = await Usuario.findByPk(req.params.id);
    const mensajesUsuario = await friendManager.getMessages(usuarioGestionar.id_usuario);
    var nombreDestinatario = new Array();
    for (const mensaje of mensajesUsuario) {
        var Users = await sequelize.query("SELECT nombreUsuario from usuario WHERE id_usuario = ?", { replacements: [mensaje.id_usuario2_mensaje], type: sequelize.QueryTypes.SELECT });
        nombreDestinatario.push(Users[0].nombreUsuario)
    }
    res.render("gestionarUsuario", {
        title: `YGDB - Gestionar - ${usuarioGestionar.nombreUsuario}`, usuario: req.session.usuario, usuarioGestionar: usuarioGestionar,
        mensajesUsuario: mensajesUsuario, nombreDestinatario: nombreDestinatario
    });
}

exports.addFriend = (req, res) => {
    const body = req.body;

    friendManager.addFriend(body.usuarioId, body.usuarioPerfilId)
        .then(() => {
            res.redirect(`/profile/${body.usuarioPerfilNombre}`);
        })
        .catch((err) => {
            console.log(err);
            res.render("errorInterno", { title: "500 - Error" });
        });
};

exports.acceptFriend = (req, res) => {
    const idUsuarioAceptar = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;

    friendManager.acceptFriend(idUsuario, idUsuarioAceptar)
        .then((result) => {
            res.json({
                estado: "aceptado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });
};

exports.rejectFriend = (req, res) => {
    const idUsuarioEliminar = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;

    friendManager.rejectFriend(idUsuario, idUsuarioEliminar)
        .then((result) => {
            res.json({
                estado: "rechazado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });
}

exports.banUser = (req, res) => {
    const idUsuario = req.params.id;
    sequelize.query("UPDATE usuario SET baneado = 'SI' WHERE id_usuario = ?", { replacements: [idUsuario], type: sequelize.QueryTypes.UPDATE })
        .then((result) => {
            res.json({
                estado: "Baneado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });;
};

exports.unbanUser = (req, res) => {
    const idUsuario = req.params.id;
    sequelize.query("UPDATE usuario SET baneado = 'NO' WHERE id_usuario = ?", { replacements: [idUsuario], type: sequelize.QueryTypes.UPDATE })
        .then((result) => {
            res.json({
                estado: "Desbaneado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });;
};