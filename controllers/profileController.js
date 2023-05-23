const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
const friendManager = require("../services/friendManager");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Perfil de "
};

exports.profile = (req, res) => {
    res.render("profile", { title: params.title + `${req.session.usuario.nombreUsuario}`, usuario: req.session.usuario, usuarioPerfil: req.session.usuario });
};

exports.profileUser = async (req, res) => {
    const username = req.params.username;
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    let estadoAmistad;

    let usuario = await sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?", { replacements: [username], type: sequelize.QueryTypes.SELECT });
    usuario = usuario[0];

    if (usuarioLogueado !== null && usuarioLogueado.nombreUsuario === usuario.nombreUsuario) {
        res.render("profile", { title: params.title + `${usuarioLogueado.nombreUsuario}`, usuario: usuarioLogueado });
    } else {
        if (usuarioLogueado) {
            estadoAmistad = await friendManager.getEstado(usuarioLogueado.id_usuario, usuario.id_usuario);
            console.log(estadoAmistad);
        }
        if (usuario) {
            res.render("profileUser", { title: params.title + `${username}`, usuarioPerfil: usuario, usuario: usuarioLogueado, estadoAmistad: estadoAmistad });
        } else {
            res.render("error");
        }
    }

};