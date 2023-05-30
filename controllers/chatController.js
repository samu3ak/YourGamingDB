const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

const friendManager = require("../services/friendManager");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Chat "
};

exports.chat = async (req, res) => {
    const usuario = req.session.usuario;
    const usuarioChat = await Usuario.findOne({ where: { nombreUsuario: req.params.nombreUsuario } });
    if (usuarioChat === null) {
        res.render("errorInterno", { title: "500 - Error" });
    } else {
        const mensajes = await friendManager.loadMessages(usuario.id_usuario, usuarioChat.id_usuario);
        console.log(mensajes);
        res.render("chat", { title: params.title, usuario: usuario, usuarioChat: usuarioChat, mensajes: mensajes });
    }
};

exports.chat_post = async (req, res) => {
    const texto = req.body.texto.trim();
    const usuario = req.session.usuario;
    const usuarioChat = await Usuario.findOne({ where: { nombreUsuario: req.params.nombreUsuario } });
    const mensajes = await friendManager.loadMessages(usuario.id_usuario, usuarioChat.id_usuario);
    if (texto === undefined || texto === "") {
        res.render("chat", { title: params.title, usuario: usuario, usuarioChat: usuarioChat, mensajes: mensajes, error: "No se puede enviar un mensaje sin contenido" });
    } else {
        await friendManager.sendMessage(usuario.id_usuario, usuarioChat.id_usuario, texto)
            .catch((err) => {
                console.log(err);
                res.render("errorInterno", { title: "500 - Error" });
            });
        res.redirect(`/chat/${usuarioChat.nombreUsuario}`);
    }
};