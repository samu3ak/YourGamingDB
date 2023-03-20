var express = require('express');
var router = express.Router();

// Parámetros establecidos para las opciones de renderizado de la página
const params = {
  title: "YGDB - Login"
};

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('login', { title: params.title });
});

module.exports = router;
