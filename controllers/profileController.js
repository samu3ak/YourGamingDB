const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
const friendManager = require("../services/friendManager");
const gameManager = require("../services/gameManager");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Perfil de "
};

exports.profile = async (req, res) => {
    const numSeguidores = await friendManager.numberOfFriends(req.session.usuario.id_usuario);
    let numCompletados, numJugando, numPendientes;
    let completados, jugando, pendientes;

    [numCompletados, numJugando, numPendientes] = await gameManager.obtenerNumJugadosPendientesCompletados(req.session.usuario.id_usuario);
    [completados, jugando, pendientes] = await gameManager.obtenerJugadosPendientesCompletados(req.session.usuario.id_usuario);
    res.render("profile", {
        title: params.title + `${req.session.usuario.nombreUsuario}`, usuario: req.session.usuario, numSeguidores: numSeguidores, usuarioPerfil: req.session.usuario,
        numCompletados: numCompletados, numPendientes: numPendientes, numJugando: numJugando, completados: completados, pendientes: pendientes, jugando: jugando
    });
};

exports.profileUser = async (req, res) => {
    const username = req.params.username;
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    let estadoAmistad;

    let usuario = await sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?", { replacements: [username], type: sequelize.QueryTypes.SELECT });
    usuario = usuario[0];
    const numSeguidores = await friendManager.numberOfFriends(usuario.id_usuario);

    if (usuarioLogueado !== null && usuarioLogueado.nombreUsuario === usuario.nombreUsuario) {
        res.redirect("/profile");
    } else {
        if (usuarioLogueado) {
            estadoAmistad = await friendManager.getEstado(usuarioLogueado.id_usuario, usuario.id_usuario);
        }
        if (usuario) {
            let numCompletados, numPendientes, numJugando;
            let completados, jugando, pendientes;
            [numCompletados, numJugando, numPendientes] = await gameManager.obtenerNumJugadosPendientesCompletados(usuario.id_usuario);
            [completados, jugando, pendientes] = await gameManager.obtenerJugadosPendientesCompletados(usuario.id_usuario);
            res.render("profileUser", { title: params.title + `${username}`, usuarioPerfil: usuario, usuario: usuarioLogueado, numSeguidores: numSeguidores, estadoAmistad: estadoAmistad, numCompletados: numCompletados, numPendientes: numPendientes, numJugando: numJugando, completados: completados, pendientes: pendientes, jugando: jugando });
        } else {
            res.render("error");
        }
    }

};