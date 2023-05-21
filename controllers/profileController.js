const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Perfil de "
};

exports.profile = (req, res) => {
    res.render("profile", { title: params.title + `${req.session.usuario.nombreUsuario}`, usuario: req.session.usuario });
};

exports.profileUser = async (req, res) => {
    const username = req.params.username;

    let usuario = await sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?", { replacements: [username], type: sequelize.QueryTypes.SELECT });
    if (usuario) {
        usuario = usuario[0];
        res.render("profile", { title: params.title + `${username}`, usuario: usuario });
    } else {
        res.render("error");
    }

};