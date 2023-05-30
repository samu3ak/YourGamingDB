const express = require('express');
const router = express.Router();
var profileController = require("../controllers/profileController.js");

/* GET home page. */
router.get('/', profileController.profile);

router.get('/:username', profileController.profileUser);

module.exports = router;
