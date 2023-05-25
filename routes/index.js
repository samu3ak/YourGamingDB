var express = require('express');
var router = express.Router();
var indexController = require("../controllers/indexController.js");
const md_loadNotifications = require("../middlewares/loadNotifications.js");

/* GET home page. */
router.get('/', [md_loadNotifications.loadNotifications], indexController.index);

router.get('/logout', [md_loadNotifications.loadNotifications], indexController.logout);

module.exports = router;
