var express = require('express');
var router = express.Router();
var registerController = require("../controllers/registerController");

/* GET home page. */
router.get('/', registerController.register);

router.post('/', registerController.register_post);

module.exports = router;
