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
        req.getConnection((err, conn) => {

        });
    } else {
        res.render("login", { title: params.title, error: params.errorMsg, usuario: data.usuario, password: data.password });
    }
};