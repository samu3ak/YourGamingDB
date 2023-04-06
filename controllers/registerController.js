// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Registro",
    errorMsg: ""
};

exports.register = (req, res) => {
    res.render("register", { title: params.title });
};