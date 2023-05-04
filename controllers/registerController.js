const { QueryTypes } = require("sequelize");
const [Usuario, sequelize] = require("../models/cargarModelos").getModelSequelize("../models/usuario");

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Registro",
    errorMsg: "",
    successMsg: ""
};

exports.register = (req, res) => {
    res.render("register", { title: params.title });
};

exports.register_post = (req, res) => {
    const data = req.body;
    var validado = true;

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
        let usuario = data.usuario;
        let correo = data.correo;
        let password = data.password;
        let passwordConfirm = data.passwordConfirm;
        // Expresiones regulares para controlar los datos introducidos y filtrarlos
        if (!usuario.match(/[a-zA-z0-9]{2,20}/g)) {
            validado = false;
            params.errorMsg = "El usuario debe contener caracteres alfanuméricos entre 2 y 20 caracteres de longitud";
        } else if (!correo.match(/[\w-\.]+@([\w-]+\.)+[\w-]{2,4}/g)) {
            validado = false;
            params.errorMsg = "Debe introducir una dirección de correo electrónico válida";
        } else if (!password.match(/(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/g)) {
            validado = false;
            params.errorMsg = "La contraseña debe tener un mínimo de 8 caracteres de longitud y deberá contener al menos una letra y un número";
        } else if (password !== passwordConfirm) {
            validado = false;
            params.errorMsg = "La contraseña de confirmación debe coincidir";
        }

        if (validado) {
            // Consulta para comprobar que no existe ya un usuario con el mismo nombre
            sequelize.query("SELECT nombreUsuario, correo FROM usuario WHERE nombreUsuario = ? OR correo = ?", { replacements: [usuario, correo], type: sequelize.QueryTypes.SELECT })
                .then( async (row) => {
                    if (row.length > 1) throw new Error("Se ha encontrado más de un usuario con el mismo nombre en la BBDD");
                    if (row[0] === undefined) {
                        //Lógica creación usuario si no existe uno con el mismo nombre/correo
                        const user = await Usuario.create({
                            nombreUsuario: usuario,
                            correo: correo,
                            password: password,
                            rol: "usuario"
                        });
                        params.successMsg = "La cuenta ha sido registrada satisfactoriamente"
                        res.render("register", { title: params.title, success: params.successMsg });
                    } else {
                        // Ya existe un usuario con dicho nombre/correo
                        if (row[0].nombreUsuario === usuario) {
                            params.errorMsg = "Ya existe un usuario con ese nombre"
                            console.log(usuario);
                        } else {
                            params.errorMsg = "Ya existe una cuenta registrada con esa dirección de correo electrónico"
                        }
                        res.render("register", {
                            title: params.title, error: params.errorMsg, usuario: data.usuario,
                            correo: data.correo, password: data.password, passwordConfirm: data.passwordConfirm
                        });
                    }
                }).catch((err) => {
                    params.errorMsg = "Ha ocurrido un error interno";
                    res.render("register", {
                        title: params.title, error: params.errorMsg, usuario: data.usuario,
                        correo: data.correo, password: data.password, passwordConfirm: data.passwordConfirm
                    });
                    console.log(err);
                });
        }else{
            res.render("register", {
                title: params.title, error: params.errorMsg, usuario: data.usuario,
                correo: data.correo, password: data.password, passwordConfirm: data.passwordConfirm
            });
        }
    } else {
        res.render("register", {
            title: params.title, error: params.errorMsg, usuario: data.usuario,
            correo: data.correo, password: data.password, passwordConfirm: data.passwordConfirm
        });
    }
};