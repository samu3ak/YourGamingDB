const express = require('express');
const router = express.Router();
var profileController = require("../controllers/profileController.js");
const md_auth = require("../middlewares/auth");

/* GET home page. */
router.get('/', [md_auth.userLogged], profileController.profile);

router.get('/:username', [md_auth.userExists], profileController.profileUser);

module.exports = router;
