var express = require('express');
var router = express.Router();

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
  title: "YGDB - Inicio",
  inicioActivo: "active"
};

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: params.title, inicioActivo: params.inicioActivo });
  // req.getConnection((err, connection) => {
  //   if (err) return next(err);

  //   connection.query("SELECT * FROM usuario", (err, rows)=>{
  //     if (err) return next(err);

  //     console.log(rows);
  //   });
  // });
});

module.exports = router;
