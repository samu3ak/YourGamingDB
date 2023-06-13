const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
const friendManager = require("../services/friendManager");
const gameManager = require("../services/gameManager");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - "
};

exports.juego = async (req, res) => {
    const idJuego = req.params.id;
    let estadoUsuario;
    console.log(idJuego);
    let juego = await sequelize.query("SELECT * FROM juego WHERE id_juego = ?", { replacements: [idJuego], type: sequelize.QueryTypes.SELECT });
    juego = juego[0];
    if (req.session.usuario !== undefined) {
        estadoUsuario = await sequelize.query("SELECT * FROM usuariojuego WHERE id_usuario_usuarioJuego = ? AND id_juego_usuarioJuego = ?", { replacements: [req.session.usuario.id_usuario, idJuego], type: sequelize.QueryTypes.SELECT });
        estadoUsuario = estadoUsuario[0];
    }
    res.render("juego", { title: params.title + `${juego.titulo}`, usuario: req.session.usuario, juego: juego, estadoUsuario: estadoUsuario });
};

exports.estado_put = async (req, res) => {
    const idJuego = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;
    const estado = req.body.estado;
    if (!(await gameManager.userHasGame(idUsuario, idJuego))) {
        await gameManager.linkGameToUser(idUsuario, idJuego);

    }
    sequelize.query("UPDATE usuariojuego SET estado = ? WHERE id_usuario_usuariojuego = ? AND id_juego_usuariojuego = ?",
        { replacements: [estado, idUsuario, idJuego], type: sequelize.QueryTypes.UPDATE })
        .then((result) => {
            res.json({
                estado: "Actualizado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });
};

exports.calificacion_put = async (req, res) => {
    const idJuego = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;
    const calificacion = req.body.calificacion;
    if (!(await gameManager.userHasGame(idUsuario, idJuego))) {
        await gameManager.linkGameToUser(idUsuario, idJuego);
    }
    sequelize.query("UPDATE usuariojuego SET calificacion = ? WHERE id_usuario_usuariojuego = ? AND id_juego_usuariojuego = ?",
        { replacements: [calificacion, idUsuario, idJuego], type: sequelize.QueryTypes.UPDATE })
        .then((result) => {
            res.json({
                calificacion: "Actualizado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });
};

exports.opinion_put = async (req, res) => {
    const idJuego = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;
    const opinion = req.body.opinion;
    if (!(await gameManager.userHasGame(idUsuario, idJuego))) {
        await gameManager.linkGameToUser(idUsuario, idJuego);
    }
    sequelize.query("UPDATE usuariojuego SET opinion = ? WHERE id_usuario_usuariojuego = ? AND id_juego_usuariojuego = ?",
        { replacements: [opinion, idUsuario, idJuego], type: sequelize.QueryTypes.UPDATE })
        .then((result) => {
            res.json({
                opinion: "Actualizado"
            });
        })
        .catch((error) => {
            console.log(error);
            res.render("errorInterno", { title: "500 - Error" });
        });
};