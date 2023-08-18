const express = require('express');
const router = express.Router();

const helpers = require('../lib/helpers');

//esto es igual al include conex de php
const pool = require('../database');

//protector de enlaces=============================+
const { isLoggedInd } =  require('../lib/auth');



//gestiones ===========================================+

//post==================================================+
router.get('/post', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM mensajescoordinaciones ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/post', { tablaPost });
});
router.post('/post', async (req, res) =>{
    //console.log(tabla);
    const {rama, estado, diocesis, titulo, post} = req.body;
    const newPost = {rama, estado, diocesis, titulo, post}
    await pool.query('INSERT INTO mensajescoordinaciones set ?', [newPost]);
    req.flash('success', 'Mensaje enviado');
    res.redirect('/coordinacion/post');
});

//tabla data ==========================================+
router.get('/data', isLoggedInd, async (req, res) =>{
    const tabla = await pool.query('SELECT * FROM instructores ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/dataInstructores', { tabla });
});



router.get('/delete/:id', async (req, res) =>{
    //console.log(req.params.id);
    const {id} = req.params;
    await pool.query('DELETE FROM instructores WHERE ID = ?', [id]);
    req.flash('success', 'Usuario Eliminado');
    res.redirect('/coordinacion/data');
});

router.get('/edit/:id', async (req, res) =>{
    //console.log(req.params.id);
    const {id} = req.params;
    const user = await pool.query('SELECT * FROM instructores WHERE id = ?', [id]);
    //console.log(user[0]);
    res.render('coordinacion/edit', {user: user[0]});
});

router.post('/edit/:id', async (req, res) =>{
    //console.log(req.params.id);
    const { id } = req.params;
    const { usuario, password } = req.body;
    const newUser = { usuario, password };    
    newUser.password = await helpers.encryptPassword(password);
    //console.log(newUser);
    //res.send('update');
    await pool.query('UPDATE instructores set ? WHERE id = ?', [newUser, id]);
    req.flash('success', 'Usuario actualizado');
    res.redirect('/coordinacion/data');
});

module.exports = router;