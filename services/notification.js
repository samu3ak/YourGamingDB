const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();

async function cargarSolicitudesUsuario(userId) {
    const query = await sequelize.query("SELECT * FROM usuario u WHERE u.id_usuario = (SELECT a.id_usuario_usuarioAmigo FROM usuarioamigo a WHERE a.estado = 'pendiente' AND a.id_usuario_usuarioAmigo = u.id_usuario AND a.id_usuario2_usuarioAmigo = ?);",
        {
            replacements: [
                userId],
            type: sequelize.QueryTypes.SELECT
        });
    return query;
}

module.exports = {
    cargarSolicitudesUsuario
};