var express = require('express');
var router = express.Router();
var gestionUsuariosController = require("../controllers/gestionUsuariosController.js");
const md_auth = require("../middlewares/auth");

/* GET home page. */
router.get('/', [md_auth.userIsAdmin], gestionUsuariosController.gestionUsuarios);

router.post('/addFriend', [md_auth.userLogged], gestionUsuariosController.addFriend);

router.delete("/rejectFriend/:id", [md_auth.userLogged], gestionUsuariosController.rejectFriend);

module.exports = router;
