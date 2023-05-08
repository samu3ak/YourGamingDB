// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Perfil de "
};

exports.profile = (req, res) => {
    res.render("profile", { title: params.title + `${req.session.usuario.nombreUsuario}`, usuario: req.session.usuario });
};