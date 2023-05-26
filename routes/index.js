var express = require('express');
var router = express.Router();
var indexController = require("../controllers/indexController.js");
const md_loadNotifications = require("../middlewares/loadNotifications.js");

/* GET home page. */
router.get('/', indexController.index);

router.get('/logout', indexController.logout);

module.exports = router;
