// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Perfil de "
};

exports.profile = (req, res) => {
    const usuarioLogueado = req.session.usuario ? req.session.usuario : null;
    // Comprobación permisos y renderizado
    if (usuarioLogueado !== null) {
        res.render("profile", { title: params.title + `${req.session.usuario.nombreUsuario}`, usuario: req.session.usuario });
    } else {
        params.title = "YGDB - Error";
        res.render("errorPermisos", { title: params.title });
    }
};