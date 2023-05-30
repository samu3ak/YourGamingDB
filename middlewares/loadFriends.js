const friendManager = require("../services/friendManager");

async function loadFriends(req, res, next) {
    let amigos;
    if (req.session.usuario !== undefined) {
        amigos = await friendManager.getFriends(req.session.usuario.id_usuario);
    }
    res.locals.amigos = amigos;
    next();
}

module.exports = {
    loadFriends
};