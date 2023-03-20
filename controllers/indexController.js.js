// Parámetros establecidos para las opciones de renderizado de la página
const params = {
    title: "YGDB - Inicio",
    inicioActivo: "active"
};

exports.index = (req, res) => {
    res.render('index', { title: params.title, inicioActivo: params.inicioActivo });
    // req.getConnection((err, connection) => {
    //   if (err) return next(err);

    //   connection.query("SELECT * FROM usuario", (err, rows)=>{
    //     if (err) return next(err);

    //     console.log(rows);
    //   });
    // });
};