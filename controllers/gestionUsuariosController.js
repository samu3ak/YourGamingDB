const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");
const friendManager = require("../services/friendManager.js");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Administrador - Gestión de usuarios",
    errorMsg: ""
};

exports.gestionUsuarios = async (req, res, next) => {
    var busqueda = req.query.nombreUsuario ? req.query.nombreUsuario : "";
    // Recogida de usuarios registrados con rol de usuario
    var Users = await sequelize.query("SELECT id_usuario, nombreUsuario, correo, rol FROM usuario WHERE rol = 'usuario' AND LOWER(nombreUsuario) LIKE ?", { replacements: [`%${busqueda.toLowerCase()}%`], type: sequelize.QueryTypes.SELECT });
    res.render("gestionUsuarios", { title: params.title, usuario: req.session.usuario, usuarios: Users, nombreUsuario: busqueda });
};

exports.addFriend = (req, res) => {
    const body = req.body;

    friendManager.addFriend(body.usuarioId, body.usuarioPerfilId)
        .then(() => {
            res.redirect(`/profile/${body.usuarioPerfilNombre}`);
        })
        .catch((err) => {
            console.log(err);
            res.render("errorInterno", { title: "Error 500" });
        });
};

exports.rejectFriend = (req, res) => {
    const idUsuarioEliminar = req.params.id;
    const idUsuario = req.session.usuario.id_usuario;

    const resultado = friendManager.rejectFriend(idUsuario,idUsuarioEliminar);
    if(resultado){
        res.json({
            estado: "eliminado"
        });
    }
}