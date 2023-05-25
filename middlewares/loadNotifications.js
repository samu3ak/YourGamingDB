const notification = require("../services/notification");

async function loadNotifications(req, res, next) {
    let usuarioSolicitud;
    if (req.session.usuario !== undefined) {
        usuarioSolicitud = await notification.cargarSolicitudesUsuario(req.session.usuario.id_usuario);
    }
    res.locals.usuarioSolicitud = usuarioSolicitud;
    next();
}

module.exports = {
    loadNotifications
};