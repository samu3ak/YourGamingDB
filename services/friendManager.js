const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();

async function isFriend(userId, friendId) {
    let isFriend = true;
    const query = await sequelize.query("SELECT estado FROM usuarioamigo WHERE (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?) OR (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?)",
        {
            replacements: [
                userId,
                friendId,
                friendId,
                userId],
            type: sequelize.QueryTypes.SELECT
        });
    if (query[0].estado === null || query[0].estado !== "amigo") {
        isFriend = false;
    }
    return isFriend;
}

async function getEstado(userId, friendId) {
    const query = await sequelize.query("SELECT estado FROM usuarioamigo WHERE (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?) OR (id_usuario2_usuarioAmigo = ? AND id_usuario_usuarioAmigo = ?)",
        {
            replacements: [
                userId,
                friendId,
                friendId,
                userId],
            type: sequelize.QueryTypes.SELECT
        });
    return query[0];
}

async function addFriend(userId, friendToAddId) {
    const query = await sequelize.query("INSERT INTO usuarioamigo (id_usuario_usuarioAmigo, id_usuario2_usuarioAmigo, estado) VALUES (?, ?, 'pendiente')", { replacements: [userId, friendToAddId], type: sequelize.QueryTypes.INSERT });
    console.log(query);
    return query;
}

async function acceptFriend(idUsuario, idUsuarioAmigo) {
    const query = await sequelize.query("UPDATE usuarioamigo SET estado = 'amigo' WHERE (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?) OR (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?)",
        {
            replacements: [
                idUsuario,
                idUsuarioAmigo,
                idUsuarioAmigo,
                idUsuario],
            type: sequelize.QueryTypes.UPDATE
        });
    return query;
}

async function rejectFriend(userId, friendToReject) {
    const query = await sequelize.query("DELETE FROM usuarioamigo WHERE (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?) OR (id_usuario_usuarioAmigo = ? AND id_usuario2_usuarioAmigo = ?)",
        {
            replacements: [
                userId,
                friendToReject,
                friendToReject,
                userId],
            type: sequelize.QueryTypes.DELETE
        });
    return query;
}

module.exports = {
    isFriend,
    addFriend,
    acceptFriend,
    getEstado,
    rejectFriend
};