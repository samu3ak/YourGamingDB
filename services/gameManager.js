const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();

async function userHasGame(userId, gameId) {
    let existe = false;

    const consulta = await sequelize.query("SELECT * FROM usuariojuego WHERE id_usuario_usuarioJuego = ? AND id_juego_usuarioJuego = ?", { replacements: [userId, gameId], type: sequelize.QueryTypes.SELECT });
    if (consulta[0] !== undefined) {
        existe = true;
    }
    return existe;
}

async function linkGameToUser(userId, gameId) {
    userId = Number(userId);
    gameId = Number(gameId);
    await sequelize.query("INSERT INTO usuariojuego (id_usuario_usuarioJuego, id_juego_usuarioJuego) VALUES(?, ?)",
        { replacements: [userId, gameId], type: sequelize.QueryTypes.INSERT });
}

async function obtenerNumJugadosPendientesCompletados(userId) {
    let numCompletados = await sequelize.query("SELECT COUNT(*) as numCompletados FROM usuariojuego WHERE id_usuario_usuarioJuego = ? AND estado = 'Completado'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    numCompletados = numCompletados[0].numCompletados;
    let numJugando = await sequelize.query("SELECT COUNT(*) as numJugando FROM usuariojuego WHERE id_usuario_usuarioJuego = ? AND estado = 'Jugando'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    numJugando = numJugando[0].numJugando;
    let numPendientes = await sequelize.query("SELECT COUNT(*) as numPendientes FROM usuariojuego WHERE id_usuario_usuarioJuego = ? AND estado = 'Pendiente'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    numPendientes = numPendientes[0].numPendientes;
    return [numCompletados, numJugando, numPendientes];
}

async function obtenerJugadosPendientesCompletados(userId) {
    let completados = await sequelize.query("SELECT u.calificacion, u.opinion, j.id_juego, j.titulo, j.imagen FROM usuariojuego u INNER JOIN juego j ON (u.id_juego_usuarioJuego = j.id_juego) WHERE u.id_usuario_usuarioJuego= ? AND u.estado = 'Completado'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    let jugando = await sequelize.query("SELECT u.calificacion, j.id_juego, j.titulo, j.imagen FROM usuariojuego u INNER JOIN juego j ON (u.id_juego_usuarioJuego = j.id_juego) WHERE u.id_usuario_usuarioJuego= ? AND u.estado = 'Jugando'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    let pendientes = await sequelize.query("SELECT j.id_juego, j.titulo, j.imagen FROM usuariojuego u INNER JOIN juego j ON (u.id_juego_usuarioJuego = j.id_juego) WHERE u.id_usuario_usuarioJuego= ? AND u.estado = 'Pendiente'", { replacements: [userId], type: sequelize.QueryTypes.SELECT });
    return [completados, jugando, pendientes];
}


module.exports = {
    userHasGame,
    linkGameToUser,
    obtenerNumJugadosPendientesCompletados,
    obtenerJugadosPendientesCompletados
};