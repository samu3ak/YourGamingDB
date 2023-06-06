var express = require('express');
var router = express.Router();
var gestionUsuariosController = require("../controllers/gestionUsuariosController.js");
const md_auth = require("../middlewares/auth");

/* GET home page. */
router.get('/', [md_auth.userIsAdmin], gestionUsuariosController.gestionUsuarios);

router.get("/:id", [md_auth.userIsAdmin], gestionUsuariosController.gestionarUsuario);

router.post('/addFriend', [md_auth.userLogged], gestionUsuariosController.addFriend);

router.put("/acceptFriend/:id", [md_auth.userLogged], gestionUsuariosController.acceptFriend);

router.delete("/rejectFriend/:id", [md_auth.userLogged], gestionUsuariosController.rejectFriend);

router.put("/banUser/:id", [md_auth.userIsAdmin], gestionUsuariosController.banUser);
router.put("/unbanUser/:id", [md_auth.userIsAdmin], gestionUsuariosController.unbanUser);
router.delete("/deleteUser/:id", [md_auth.userIsAdmin], gestionUsuariosController.deleteUser);

module.exports = router;
