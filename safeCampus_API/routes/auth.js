const express = require('express');
const router = express.Router();

const UserController = require('../src/Crontrollers/')

router.get('/', AuthController.getUsers)
router.post('/', AuthController.postUser)


module.exports = router;