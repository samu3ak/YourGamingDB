const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();
// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Login",
    errorMsg: ""
};

exports.login = (req, res) => {
    res.render('login', { title: params.title });
};

exports.login_post = (req, res) => {
    const data = req.body;
    const usuario = data.usuario;
    const password = data.password;
    let validado = true;

    if (usuario === "" || password === "") {
        validado = false;
        params.errorMsg = "Recuerda rellenar todos los campos";
    }
    /*
    PARA FILTROS DE REGISTRO
    else if(!usuario.match(/[a-zA-z0-9]{2,20}/g)){
        validado = false;
        params.errorMsg = "El usuario debe contener caracteres alfanuméricos entre 2 y 20 caracteres de longitud";
    }else if(!password.match(/(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/g)){
        validado = false;
        params.errorMsg = "La contraseña debe tener un mínimo de 8 caracteres de longitud y deberá contener al menos una letra y un número";
    }*/

    if (validado) {
        sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?", { replacements: [usuario], type: sequelize.QueryTypes.SELECT })
            .then((row) => {
                if (row[0] === undefined) {
                    params.errorMsg = "No existe ese usuario/contraseña";
                    res.render("login", { title: params.title, error: params.errorMsg, usuario: data.usuario, password: data.password });
                } else if (row[0].password !== password) {
                    params.errorMsg = "Contraseña incorrecta";
                    res.render("login", { title: params.title, error: params.errorMsg, usuario: data.usuario, password: data.password });
                }
                req.session.usuario = row[0];
                res.redirect("/");
            }).catch((err) => {
                params.errorMsg = "Ha ocurrido un error interno al intentar iniciar sesión";
                res.render("login", { title: params.title, error: params.errorMsg, usuario: data.usuario, password: data.password });
                console.log(err);
            });
    } else {
        res.render("login", { title: params.title, error: params.errorMsg, usuario: data.usuario, password: data.password });
    }
};