var DataTypes = require("sequelize").DataTypes;
var _generos = require("./generos");
var _juego = require("./juego");
var _juegoplataforma = require("./juegoplataforma");
var _mensaje = require("./mensaje");
var _perfilusuario = require("./perfilusuario");
var _perfilusuariojuego = require("./perfilusuariojuego");
var _plataforma = require("./plataforma");
var _usuario = require("./usuario");
var _usuarioamigo = require("./usuarioamigo");
var _usuarioplataforma = require("./usuarioplataforma");

function initModels(sequelize) {
  var generos = _generos(sequelize, DataTypes);
  var juego = _juego(sequelize, DataTypes);
  var juegoplataforma = _juegoplataforma(sequelize, DataTypes);
  var mensaje = _mensaje(sequelize, DataTypes);
  var perfilusuario = _perfilusuario(sequelize, DataTypes);
  var perfilusuariojuego = _perfilusuariojuego(sequelize, DataTypes);
  var plataforma = _plataforma(sequelize, DataTypes);
  var usuario = _usuario(sequelize, DataTypes);
  var usuarioamigo = _usuarioamigo(sequelize, DataTypes);
  var usuarioplataforma = _usuarioplataforma(sequelize, DataTypes);

  juegoplataforma.belongsTo(juego, { as: "id_juego_juegoPlataforma_juego", foreignKey: "id_juego_juegoPlataforma"});
  juego.hasMany(juegoplataforma, { as: "juegoplataformas", foreignKey: "id_juego_juegoPlataforma"});
  perfilusuariojuego.belongsTo(juego, { as: "id_juego_perfilUsuarioJuego_juego", foreignKey: "id_juego_perfilUsuarioJuego"});
  juego.hasMany(perfilusuariojuego, { as: "perfilusuariojuegos", foreignKey: "id_juego_perfilUsuarioJuego"});
  juegoplataforma.belongsTo(plataforma, { as: "id_plataforma_juegoPlataforma_plataforma", foreignKey: "id_plataforma_juegoPlataforma"});
  plataforma.hasMany(juegoplataforma, { as: "juegoplataformas", foreignKey: "id_plataforma_juegoPlataforma"});
  usuarioplataforma.belongsTo(plataforma, { as: "id_plataforma_usuarioPlataforma_plataforma", foreignKey: "id_plataforma_usuarioPlataforma"});
  plataforma.hasMany(usuarioplataforma, { as: "usuarioplataformas", foreignKey: "id_plataforma_usuarioPlataforma"});
  mensaje.belongsTo(usuario, { as: "id_usuario_mensaje_usuario", foreignKey: "id_usuario_mensaje"});
  usuario.hasMany(mensaje, { as: "mensajes", foreignKey: "id_usuario_mensaje"});
  mensaje.belongsTo(usuario, { as: "id_usuario2_mensaje_usuario", foreignKey: "id_usuario2_mensaje"});
  usuario.hasMany(mensaje, { as: "id_usuario2_mensaje_mensajes", foreignKey: "id_usuario2_mensaje"});
  perfilusuario.belongsTo(usuario, { as: "id_usuario_perfilUsuario_usuario", foreignKey: "id_usuario_perfilUsuario"});
  usuario.hasMany(perfilusuario, { as: "perfilusuarios", foreignKey: "id_usuario_perfilUsuario"});
  perfilusuariojuego.belongsTo(usuario, { as: "id_usuario_perfilUsuarioJuego_usuario", foreignKey: "id_usuario_perfilUsuarioJuego"});
  usuario.hasMany(perfilusuariojuego, { as: "perfilusuariojuegos", foreignKey: "id_usuario_perfilUsuarioJuego"});
  usuarioamigo.belongsTo(usuario, { as: "id_usuario_usuarioAmigo_usuario", foreignKey: "id_usuario_usuarioAmigo"});
  usuario.hasMany(usuarioamigo, { as: "usuarioamigos", foreignKey: "id_usuario_usuarioAmigo"});
  usuarioamigo.belongsTo(usuario, { as: "id_usuario2_usuarioAmigo_usuario", foreignKey: "id_usuario2_usuarioAmigo"});
  usuario.hasMany(usuarioamigo, { as: "id_usuario2_usuarioAmigo_usuarioamigos", foreignKey: "id_usuario2_usuarioAmigo"});
  usuarioplataforma.belongsTo(usuario, { as: "id_usuario_usuarioPlataforma_usuario", foreignKey: "id_usuario_usuarioPlataforma"});
  usuario.hasMany(usuarioplataforma, { as: "usuarioplataformas", foreignKey: "id_usuario_usuarioPlataforma"});

  return {
    generos,
    juego,
    juegoplataforma,
    mensaje,
    perfilusuario,
    perfilusuariojuego,
    plataforma,
    usuario,
    usuarioamigo,
    usuarioplataforma,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
