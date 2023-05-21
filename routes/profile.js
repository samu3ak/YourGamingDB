const express = require('express');
const router = express.Router();
var profileController = require("../controllers/profileController.js");
const md_auth = require("../middlewares/auth");

/* GET home page. */
router.get('/', [md_auth.userLogged], profileController.profile);

router.get('/:username', profileController.profileUser);

module.exports = router;
