const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

const friendManager = require("../services/friendManager");

function userLogged(req, res, next) {
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    if (usuarioLogueado === null) {
        return res.status(404).render("login", { title: "YGDB - Login" });
    }
    next();
}

function userIsAdmin(req, res, next) {
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    if (usuarioLogueado === null || usuarioLogueado.rol !== "administrador") {
        return res.status(404).render("errorPermisos", { title: "YGDB - Error" });
    }
    next();
}

async function userIsFriend(req, res, next) {
    const usuario = req.session.usuario;
    const usuarioChat = await Usuario.findOne({ where: { nombreUsuario: req.params.nombreUsuario } });

    const esAmigo = await friendManager.isFriend(usuario.id_usuario, usuarioChat.id_usuario);
    if (!esAmigo) {
        return res.redirect(`/profile/${usuarioChat.nombreUsuario}`);
    }
    next();
}

async function userExists(req, res, next) {
    const usuario = await sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?",
        {
            replacements: [
                req.params.username],
            type: sequelize.QueryTypes.SELECT
        });
    console.log(usuario);
    if (usuario[0] === undefined) {
        return res.redirect(`/`);
    }
    next();
}

module.exports = {
    userLogged,
    userIsAdmin,
    userIsFriend,
    userExists
};