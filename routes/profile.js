var express = require('express');
var router = express.Router();
var profileController = require("../controllers/profileController.js");

/* GET home page. */
router.get('/', profileController.profile);

module.exports = router;
