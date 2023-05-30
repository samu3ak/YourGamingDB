// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Inicio",
    inicioActivo: "active"
};

exports.index = (req, res) => {
    res.render("index", { title: params.title, usuario: req.session.usuario });
};

exports.logout = (req, res) => {
    req.session.destroy();
    res.render("index", { title: params.title });
};