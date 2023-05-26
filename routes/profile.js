const express = require('express');
const router = express.Router();
var profileController = require("../controllers/profileController.js");
const md_auth = require("../middlewares/auth");
const md_loadNotifications = require("../middlewares/loadNotifications.js");

/* GET home page. */
router.get('/', profileController.profile);

router.get('/:username', profileController.profileUser);

module.exports = router;
