const express = require('express');
const router = express.Router();
const userController = require('../controllers/user.controller');

// Routing standar REST API
router.get('/', userController.getAllUsers);            // get all
router.get('/:id', userController.getUserById);         // search by id
router.post('/', userController.createUser);            // insert
router.put('/:id', userController.updateUser);          // update
router.delete('/:id', userController.deleteUser);       // delete


module.exports = router;
