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

    if (validado) {
        sequelize.query("SELECT * FROM usuario WHERE nombreUsuario = ?", { replacements: [usuario], type: sequelize.QueryTypes.SELECT })
            .then((row) => {
                if(row.length > 1) throw new Error("Se ha encontrado más de un usuario con el mismo nombre en la BBDD");
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