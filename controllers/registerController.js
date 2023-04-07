const { QueryTypes } = require("sequelize");
const sequelize = require("../models/cargarModelos").getSequelize();

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Registro",
    errorMsg: ""
};

exports.register = (req, res) => {
    res.render("register", { title: params.title });
};
/*
    PARA FILTROS DE REGISTRO
    else if(!usuario.match(/[a-zA-z0-9]{2,20}/g)){
        validado = false;
        params.errorMsg = "El usuario debe contener caracteres alfanuméricos entre 2 y 20 caracteres de longitud";
    }else if(!password.match(/(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/g)){
        validado = false;
        params.errorMsg = "La contraseña debe tener un mínimo de 8 caracteres de longitud y deberá contener al menos una letra y un número";
    }*/

exports.register_post = (req, res) => {
    const data = req.body;
    let validado = true;
    // Comprueba que no quede ningún campo obligatorio vacío
    JSON.stringify(data).split(",").map((campo) => {
        inputUsuario = campo.substring(campo.indexOf(":") + 1, campo.indexOf("\"", campo.indexOf(":") + 2) + 1);
        if (inputUsuario.length === 2) {
            validado = false;
            params.errorMsg = "Recuerda rellenar todos los campos";
            return null;
        }
    });

    if (validado) {
        res.render("register", { title: params.title });
    } else {
        res.render("register", { title: params.title, error: params.errorMsg });
    }
};