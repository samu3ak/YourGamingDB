const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Inicio",
    inicioActivo: "active"
};

exports.index = async (req, res) => {
    let numResultados = await sequelize.query("SELECT COUNT(*) as numero FROM juego", { type: sequelize.QueryTypes.SELECT });
    numResultados = numResultados[0].numero;
    req.session.numPaginas = ((numResultados / 10) >> 0)+1;
    req.session.pagActual = 0;

    let juegos = await sequelize.query(`SELECT * FROM juego ORDER BY titulo ASC LIMIT 10 OFFSET ${req.session.pagActual}`, { type: sequelize.QueryTypes.SELECT });

    res.render("index", {
        title: params.title, usuario: req.session.usuario, numPaginas: req.session.numPaginas,
        pagActual: req.session.pagActual, numResultados: numResultados, juegos: juegos
    });
};

exports.nextPage = async (req, res) => {
    let numResultados = await sequelize.query("SELECT COUNT(*) as numero FROM juego", { type: sequelize.QueryTypes.SELECT });
    numResultados = numResultados[0].numero;
    req.session.numPaginas = ((numResultados / 10) >> 0)+1;
    if ((req.session.pagActual + 1) < req.session.numPaginas) {
        req.session.pagActual = req.session.pagActual + 1;
    }

    let offset = req.session.pagActual * 10;
    if (req.session.pagActual === 0) {
        offset = 0;
    }

    let juegos = await sequelize.query(`SELECT * FROM juego ORDER BY titulo ASC LIMIT 10 OFFSET ${offset}`, { type: sequelize.QueryTypes.SELECT });

    res.render("index", {
        title: params.title, usuario: req.session.usuario, numPaginas: req.session.numPaginas,
        pagActual: req.session.pagActual, numResultados: numResultados, juegos: juegos
    });
}

exports.prevPage = async (req, res) => {
    let numResultados = await sequelize.query("SELECT COUNT(*) as numero FROM juego", { type: sequelize.QueryTypes.SELECT });
    numResultados = numResultados[0].numero;
    req.session.numPaginas = ((numResultados / 10) >> 0)+1;
    if ((req.session.pagActual + 1) > 1) {
        req.session.pagActual = req.session.pagActual - 1;
    }

    let offset = req.session.pagActual * 10;
    if (req.session.pagActual === 0) {
        offset = 0;
    }

    let juegos = await sequelize.query(`SELECT * FROM juego ORDER BY titulo ASC LIMIT 10 OFFSET ${offset}`, { type: sequelize.QueryTypes.SELECT });

    res.render("index", {
        title: params.title, usuario: req.session.usuario, numPaginas: req.session.numPaginas,
        pagActual: req.session.pagActual, numResultados: numResultados, juegos: juegos
    });
}

exports.toEnd = async (req, res) => {
    let numResultados = await sequelize.query("SELECT COUNT(*) as numero FROM juego", { type: sequelize.QueryTypes.SELECT });
    numResultados = numResultados[0].numero;
    req.session.numPaginas = (numResultados / 10) >> 0;
    req.session.pagActual = req.session.numPaginas;
    res.redirect("/nextpage");
};

exports.logout = (req, res) => {
    req.session.destroy();
    res.redirect("/");
};