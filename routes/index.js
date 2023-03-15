var express = require('express');
var router = express.Router();

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
  title: "YGDB - Inicio"
};

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: params.title });
});

module.exports = router;
