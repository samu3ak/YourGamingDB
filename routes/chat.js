var express = require('express');
var router = express.Router();
var chatController = require("../controllers/chatController");
const md_auth = require("../middlewares/auth");

/* GET home page. */
router.get('/:nombreUsuario', [md_auth.userLogged, md_auth.userIsFriend], chatController.chat);

router.post('/:nombreUsuario', [md_auth.userLogged], chatController.chat_post);

module.exports = router;
