// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Inicio",
    inicioActivo: "active"
};

exports.index = (req, res) => {
    console.log(req.session.usuario);
    res.render("index", { title: params.title, usuario: req.session.usuario });
    // req.getConnection((err, connection) => {
    //   if (err) return next(err);

    //   connection.query("SELECT * FROM usuario", (err, rows)=>{
    //     if (err) return next(err);

    //     console.log(rows);
    //   });
    // });
};