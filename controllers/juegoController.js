const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
const friendManager = require("../services/friendManager");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - "
};

exports.juego = async (req, res) => {
    const idJuego = req.params.id;
    let juego = await sequelize.query("SELECT * FROM juego WHERE id_juego = ?", { replacements: [idJuego], type: sequelize.QueryTypes.SELECT });
    juego = juego[0];
    res.render("juego", { title: params.title + `${juego.titulo}`, usuario: req.session.usuario, juego: juego });
};