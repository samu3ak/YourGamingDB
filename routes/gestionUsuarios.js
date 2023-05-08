var express = require('express');
var router = express.Router();
var gestionUsuariosController = require("../controllers/gestionUsuariosController.js");

/* GET home page. */
router.get('/', gestionUsuariosController.gestionUsuarios);

module.exports = router;
