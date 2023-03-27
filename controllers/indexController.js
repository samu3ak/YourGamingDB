// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Inicio",
    inicioActivo: "active"
};

exports.index = (req, res) => {
    res.render("index", { title: params.title });
};