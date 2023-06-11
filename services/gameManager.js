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

async function linkGameToUser(userId, gameId){
    userId = Number(userId);
    gameId = Number(gameId);
    await sequelize.query("INSERT INTO usuariojuego (id_usuario_usuarioJuego, id_juego_usuarioJuego) VALUES(?, ?)",
    {replacements: [userId, gameId], type: sequelize.QueryTypes.INSERT});
}


module.exports = {
    userHasGame,
    linkGameToUser
};