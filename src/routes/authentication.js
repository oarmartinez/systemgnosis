const express = require('express');
const router = express.Router();

const passport =  require('passport');
//protector de enlaces===================================================+
const { isLoggedInd } =  require('../lib/auth');

//esto es igual al include conex de php
const pool = require('../database');
//signup====================================+
router.get('/signup', (req, res) =>{
    res.render('layouts/signup');
});

//gestiones de login y sign up

router.post('/signup', passport.authenticate('local.signup', {
    successRedirect: '/escritorio',
    failureRedirect: '/signup',
    failureFlash: true
}));

//Escritorios =========================================+
router.get('/escritorio', isLoggedInd, (req, res) =>{
    res.render('layouts/escritorio');
});
module.exports = router;