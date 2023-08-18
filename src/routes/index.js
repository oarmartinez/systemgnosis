const express = require('express');
const router = express.Router();


const passport =  require('passport');
//protector de enlaces===================================================+
const { isLoggedInd } =  require('../lib/auth');
//esto es igual al include conex de php
const pool = require('../database');



//ruta principal===================================================+
router.get('/', (req, res) =>{
    res.render('layouts/login');
});

//login=====================================+
router.post('/', (req, res, next) =>{
    passport.authenticate('local.signin', {
        successRedirect: '/escritorio',
        failureRedirect: '/',
        failureFlash: true
    })(req, res, next);
});


//logout================================================+
router.get('/logout', (req, res) =>{
    req.logout(req.user, err => {
        if(err) return next(err);
        res.redirect('/');
      });
});

/*

app.get("/logout", (req, res) => {
  req.logout(req.user, err => {
    if(err) return next(err);
    res.redirect("/");
  });
});


router.get('/signup', (req, res) =>{
    res.render('layouts/signup');
});

//gestiones de login y sign up

router.post('/signup', async (req, res) =>{
    const {cedula, fechanacimiento,sexo,usuario,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,password} = req.body;
    const newUser = {
        cedula, fechanacimiento,sexo,usuario,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,password
    }
    await pool.query('INSERT INTO instructores set ?', [newUser]);
    req.flash('success', 'Usuario Creado');
    res.redirect('/');
});
*/

module.exports = router;