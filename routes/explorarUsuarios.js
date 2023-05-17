var express = require('express');
var router = express.Router();
var explorarUsuariosController = require("../controllers/explorarUsuariosController");

/* GET home page. */
router.get('/', explorarUsuariosController.explorarUsuarios);

module.exports = router;
