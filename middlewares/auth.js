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

module.exports = {
    userLogged,
    userIsAdmin
};