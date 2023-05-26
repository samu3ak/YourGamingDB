var express = require('express');
var router = express.Router();
var explorarUsuariosController = require("../controllers/explorarUsuariosController");
const md_loadNotifications = require("../middlewares/loadNotifications");

/* GET home page. */
router.get('/', explorarUsuariosController.explorarUsuarios);

module.exports = router;
