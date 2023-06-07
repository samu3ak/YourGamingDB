var express = require('express');
var router = express.Router();
var indexController = require("../controllers/indexController.js");

/* GET home page. */
router.get('/', indexController.index);

router.get("/nextpage", indexController.nextPage);
router.get("/prevpage", indexController.prevPage);

router.get("/toend", indexController.toEnd);

router.get('/logout', indexController.logout);

module.exports = router;
