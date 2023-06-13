var express = require('express');
var router = express.Router();
var juegoController = require("../controllers/juegoController.js");
const md_auth = require("../middlewares/auth.js");

/* GET home page. */
router.get('/:id', juegoController.juego);

router.put('/:id/estado', [md_auth.userLogged], juegoController.estado_put);
router.put('/:id/calificacion', [md_auth.userLogged], juegoController.calificacion_put);
router.put('/:id/opinion', [md_auth.userLogged], juegoController.opinion_put);

module.exports = router;
