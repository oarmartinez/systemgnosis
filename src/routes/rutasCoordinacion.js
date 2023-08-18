const express = require('express');
const router = express.Router();
const passport =  require('passport');
const helpers = require('../lib/helpers');
const $       = require( 'jquery' );
const dt      = require( 'datatables.net' );
const buttons = require( 'datatables.net-buttons' );
const multer  = require('multer');


//esto es igual al include conex de php
const pool = require('../database');

//motor de multer para archivos====================================+
const storage = multer.diskStorage({
    destination: 'src/public/archivos/',
    filename: async (req,file,cb) =>{
        let cantidad = req.files.length;
        //console.log(cantidad);          
        cb('', file.originalname);

        console.log(file[0]);
        const nombre = file.originalname;
        const ruta = '/'+file.originalname;
        const tipo =  file.mimetype ; 
        const { autor, rama, cargo } = req.body;
        const newArchivo = { nombre, tipo, ruta, autor, rama, cargo };
        await pool.query('INSERT INTO documentos set ?', [newArchivo]);
    }
});

//motor de multer para foto===========================================+
const foto = multer.diskStorage({
    destination: 'src/public/archivos/',
    filename: async (req,file,cb) =>{
        let cantidad = req.files.length;
        //console.log(cantidad);          
        cb('', file.originalname);

        console.log(file[0]);
        const nombre = file.originalname;
        const ruta = '/'+file.originalname;
        const tipo =  file.mimetype ; 
        const { autor, rama, cargo } = req.body;
        const newArchivo = { nombre, tipo, ruta, autor, rama, cargo };
        await pool.query('INSERT INTO documentos set ?', [newArchivo]);
    }
});
//llamado de motores de imagenes====================================+
const upload = multer({ storage: storage });
const uploadFoto = multer({ storage: foto });



//protector de enlaces=============================+
const { isLoggedInd } =  require('../lib/auth');
const { listenerCount } = require('../database');

//formulario de registros de personal ==========================================+
router.get('/registrar', isLoggedInd, async (req, res) =>{
    res.render('coordinacion/registroCoordinacion');
});

//gestiones de registro

router.post('/registrar', async (req, res) =>{
    const {cedula, fechanacimiento,sexo,usuario,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,password,img} = req.body;
    const newUser = {
        cedula, fechanacimiento,sexo,usuario,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,password,img
    }
    newUser.password = await helpers.encryptPassword(password);    
    const rows = await pool.query('SELECT * FROM instructores WHERE cedula = ?', [newUser.cedula]);
    if (rows.length > 0) {       
        req.flash('message', 'Usuario Repetido');
        res.redirect('/registrar');
    } else {
        await pool.query('INSERT INTO instructores set ?', [newUser]);
        //console.log(result);
        req.flash('success', 'Usuario Creado');
        res.redirect('/registrar');
    }
});
//=====================================================================================+
//tabla data Coordinaciones ==========================================+
router.get('/data/:rama&:diocesis', isLoggedInd, async (req, res) =>{
    const {rama, diocesis} = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE rama = ? AND diocesis = ? ORDER BY id DESC', [rama, diocesis]);
    //console.log(cargo);

    res.render('coordinacion/dataInstructoresCoordinaciones', { tabla , $ });
});
//tabla data diocesis ==========================================+
router.get('/data/:diocesis', isLoggedInd, async (req, res) =>{
    const { diocesis} = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE diocesis = ? ORDER BY id DESC', [diocesis]);
    //console.log(cargo);
    

    res.render('coordinacion/dataDiocesis', { tabla , $ , dt , buttons });
});
//tabla data ==========================================+
router.get('/data', isLoggedInd, async (req, res) =>{
    const tabla = await pool.query('SELECT * FROM instructores ORDER BY id DESC');
    //console.log(tabla);
    

    res.render('coordinacion/dataInstructores', { tabla , $ , dt , buttons });
});

//Tabla de archivos del personal ==========================================+
router.get('/archivos/:usuario', isLoggedInd, async (req, res) =>{
    
    const {usuario} = req.params;   
    const au = usuario;
    const tablaArchivos = await pool.query('SELECT * FROM documentos WHERE autor = ? ORDER BY id DESC', [au]); 
    //console.log(au);
    res.render('coordinacion/gestordearchivos', { tablaArchivos , $ , dt , buttons });
});

//formularuio de insercion de archivos del personal ==========================================+
router.post('/archivos/:usuario', isLoggedInd, upload.array('archivos'), (req, res) =>{
   
    const {usuario} = req.params;    
    console.log(req.files,req.body); 
    req.flash('success', 'Archivo guardado con exito!');
    res.redirect('/archivos/'+[usuario]);
});
//eliminar archivo=================================================================================+
router.get('/eliminarArchivo/:id&:idautor', isLoggedInd, async (req, res) =>{
    
    const {id, idautor} = req.params;
    await pool.query('DELETE FROM documentos WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Archivo Eliminado');
    res.redirect('/archivos/'+[idautor]);
});
//====================================================================================================================+
//ver post cordinaciones==================================================+
router.get('/verPostCoordinaciones/', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM mensajescoordinaciones ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/verPostCoordinaciones', { tablaPost });
});
//ver post por cordinaciones==================================================+
router.get('/verPostCoordinaciones/:rama&:diocesis', isLoggedInd, async (req, res) =>{
    
    
    const {rama,diocesis} = req.params; 
    const tablaPost = await pool.query('SELECT * FROM mensajescoordinaciones WHERE rama = ? AND diocesis = ? ORDER BY id DESC',[rama,diocesis]);
    //console.log(tabla);

    res.render('coordinacion/verPostCoordinaciones', { tablaPost });
});
//eliminar post coordinaciones=================================================================================+
router.get('/eliminarPc/:id', isLoggedInd, async (req, res) =>{
    
    const {id} = req.params; 
    await pool.query('DELETE FROM mensajescoordinaciones WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/verPostCoordinaciones/');
});
//ver post segunda==================================================+
router.get('/verPostSegunda/', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM postsegunda ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/verPostSegunda', { tablaPost });
});
//eliminar post segunda===========================================================================================================================+
router.get('/eliminarPS/:id', isLoggedInd, async (req, res) =>{
    
    const {id} = req.params; 
    await pool.query('DELETE FROM postsegunda WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/verPostSegunda/');
});
//ver post web==================================================+
router.get('/verPostWeb/', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM postweb ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/verPostWeb', { tablaPost });
});
//eliminar post web==============================================================================================================+
router.get('/eliminarPw/:id', isLoggedInd, async (req, res) =>{
    
    const {id} = req.params; 
    await pool.query('DELETE FROM postweb WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/verPostWeb/');
});
//post de coordinacion==================================================+
router.get('/mensajeNacional/', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM entregamaterial ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/materialNacional', { tablaPost });
});
router.get('/postMaterial/', isLoggedInd, async (req, res) =>{
    
    const tablaPost = await pool.query('SELECT * FROM entregamaterial ORDER BY id DESC');
    //console.log(tabla);

    res.render('coordinacion/postMaterial', { tablaPost });
});
router.post('/postMaterial/', async (req, res) =>{
    //console.log(tabla);
    const {titulo, post} = req.body;
    const newPost = {titulo, post}
    await pool.query('INSERT INTO entregamaterial set ?', [newPost]);
    req.flash('success', 'Mensaje enviado');
    res.redirect('/postMaterial/');
});
//======================================================================================================+
//eliminar post coordinacion=================================================================================+
router.get('/eliminarMaterial/:id', isLoggedInd, async (req, res) =>{
    
    const {id, idautor} = req.params; 
    await pool.query('DELETE FROM entregamaterial WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/postMaterial/');
});
//======================================================================================================================+
//post de coordinaciones==================================================+
router.get('/postCoordinacion/:id', isLoggedInd, async (req, res) =>{

    const {id} = req.params; 
    const tablaPost = await pool.query('SELECT * FROM mensajescoordinaciones WHERE idautor = ? ORDER BY id DESC', [id]);
    //console.log(tabla);

    res.render('coordinacion/postCoordinacion', { tablaPost });
});
router.post('/postCoordinacion/:id', async (req, res) =>{
    //console.log(tabla);
    const {id} = req.params; 
    const idautor = id;
    const {rama, estado, diocesis, titulo, post} = req.body;
    const newPost = {idautor, rama, estado, diocesis, titulo, post}
    await pool.query('INSERT INTO mensajescoordinaciones set ?', [newPost]);
    req.flash('success', 'Mensaje enviado');
    res.redirect('/postCoordinacion/'+[id]);
});

//======================================================================================================+
//eliminar post coordinaciones=================================================================================+
router.get('/eliminarPost/:id&:idautor', isLoggedInd, async (req, res) =>{
    
    const {id, idautor} = req.params; 
    await pool.query('DELETE FROM mensajescoordinaciones WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/postCoordinacion/'+[idautor]);
});

//===========================================================================================================================+
//post segunda ==================================================+
router.get('/postsegunda/:id', isLoggedInd, async (req, res) =>{

    const {id} = req.params; 
    const tablaPost = await pool.query('SELECT * FROM postsegunda WHERE idautor = ? ORDER BY id DESC', [id]);
    //console.log(tabla);

    res.render('coordinacion/postSegunda', { tablaPost });
});
router.post('/postsegunda/:id', async (req, res) =>{
    //console.log(tabla);
    const {id} = req.params; 
    const idautor = id;
    const {rama, tipo, estado, diocesis, titulo, imgdestacada, descripcion, post} = req.body;
    const newPost = {idautor, rama, tipo, estado, diocesis, titulo, imgdestacada, descripcion, post}
    await pool.query('INSERT INTO postsegunda set ?', [newPost]);
    req.flash('success', 'Mensaje enviado');
    res.redirect('/postsegunda/'+[id]);
});
//eliminar post segunda===========================================================================================================================+
router.get('/eliminarPostSegunda/:id&:idautor', isLoggedInd, async (req, res) =>{
    
    const {id, idautor} = req.params; 
    await pool.query('DELETE FROM postsegunda WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/postsegunda/'+[idautor]);
});
//===========================================================================================================================+
//post web ==================================================+
router.get('/postWeb/:id', isLoggedInd, async (req, res) =>{

    const {id} = req.params; 
    const tablaPost = await pool.query('SELECT * FROM postweb WHERE idautor = ? ORDER BY id DESC', [id]);
    //console.log(tabla);

    res.render('coordinacion/postWeb', { tablaPost });
});
router.post('/postWeb/:id', async (req, res) =>{
    //console.log(tabla);
    const {id} = req.params; 
    const idautor = id;
    const {rama, estado, titulo, imgdestacada, descripcion, post} = req.body;
    const newPost = {idautor, rama, estado, titulo, imgdestacada, descripcion, post}
    await pool.query('INSERT INTO postweb set ?', [newPost]);
    req.flash('success', 'Mensaje enviado');
    res.redirect('/postWeb/'+[id]);
});

//eliminar post web==============================================================================================================+
router.get('/eliminarpostWeb/:id&:idautor', isLoggedInd, async (req, res) =>{
    
    const {id, idautor} = req.params; 
    await pool.query('DELETE FROM postweb WHERE id = ?', [id]);
    //console.log(idautor);

    req.flash('success', 'Mensaje Eliminado');
    res.redirect('/postWeb/'+[idautor]);
});
//===========================================================================================================================+
//recuperar contraseña==================================================+
router.get('/recuperar', async (req, res) =>{
    req.flash('message', 'El Usuario no existe');
    res.render('layouts/recuperar');
});
router.post('/consultar', async (req, res) =>{
    
    const {usuario} = req.body;
    const user = await pool.query('SELECT * FROM instructores WHERE usuario = ?', [usuario]);
    

    if (user.length > 0) {     
        const dato = user[0];
        const newDato = dato.id; 
        res.render('layouts/consultar', {newDato});
    } else {
        
        req.flash('message', 'El Usuario no existe');
        res.redirect('/recuperar');
    }    
});

router.post('/actualizarpasspport', async (req, res) =>{
    
    const { id, password } = req.body;
    const newdata = { password }; 
    newdata.password = await helpers.encryptPassword(password);
    await pool.query('UPDATE instructores set ? WHERE id = ?', [newdata, id]);
    req.flash('success', 'Usuario actualizado');
    res.redirect('/');

    
});

//formulario de registros de Primeras Camaras ==========================================+
router.get('/registroPrimerasCamaras', isLoggedInd, async (req, res) =>{
    res.render('coordinacion/primeraCamaraRegistro');
});

//gestiones de registro==============================================+

router.post('/registroPrimerasCamaras', async (req, res) =>{
    const {cedula, nombre,apellido,email,telefono,estado,instructor} = req.body;
    const newPrimera = {
        cedula, nombre,apellido,email,telefono,estado,instructor
    }   
    const rows = await pool.query('SELECT * FROM inscritos WHERE cedula = ?', [newPrimera.cedula]);
    if (rows.length > 0) {       
        req.flash('message', 'Primera Camara Repetida');
        res.redirect('/registroPrimerasCamaras');
    } else {
        await pool.query('INSERT INTO inscritos set ?', [newPrimera]);
        //console.log(result);
        req.flash('success', 'Usuario Creado');
        res.redirect('/registroPrimerasCamaras');
    }
});

//formulario de registro de Mis Primeras Camaras ==========================================+
router.get('/registroMisPrimerasCamaras', isLoggedInd, async (req, res) =>{
    res.render('coordinacion/primeraCamaraRegistroPersonal');
});
//gestiones de registro personal==============================================+

router.post('/registroMisPrimerasCamaras', async (req, res) =>{
    const {cedula, nombre,apellido,email,telefono,estado,instructor,tipo, tipocamara,diocesis,estatus,acin,final} = req.body;
    const newPrimera = {
           cedula, nombre,apellido,email,telefono,estado,instructor,tipo, tipocamara,diocesis,estatus,acin,final
    }   
    const rows = await pool.query('SELECT * FROM inscritos WHERE cedula = ?', [newPrimera.cedula]);
    if (rows.length > 0) {       
        req.flash('message', 'Primera Camara Repetida');
        res.redirect('/registroMisPrimerasCamaras');
    } else {
        await pool.query('INSERT INTO inscritos set ?', [newPrimera]);
        //console.log(result);
        req.flash('success', 'Usuario Creado');
        res.redirect('/registroMisPrimerasCamaras');
    }
});

//tabla data primeras camaras==========================================+
router.get('/dataPrimerasCamaras', isLoggedInd, async (req, res) =>{
    const tabla = await pool.query('SELECT * FROM inscritos ORDER BY id DESC');
    //console.log(tabla);
    

    res.render('coordinacion/dataPrimeraCamara', { tabla , $ , dt , buttons });
});

//tabla data primeras camaras diocesanas==========================================+
router.get('/dataPrimerasCamarasDiocesanas/:diocesis', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { diocesis} = req.params; 
    
    const tabla = await pool.query('SELECT * FROM inscritos WHERE diocesis = ? ORDER BY id DESC', [diocesis]);

    res.render('coordinacion/dataDiocesanaPrimerasCamaras', { tabla , $ , dt , buttons });
});

//tabla data mis primeras camaras ==========================================+
router.get('/dataMisPrimerasCamaras/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    
    const tabla = await pool.query('SELECT * FROM inscritos WHERE instructor = ? ORDER BY id DESC', [usuario]);

    res.render('coordinacion/dataMisPrimerasCamaras.hbs', { tabla , $ , dt , buttons });
});

//=====================================================================================+
//detalles de personal para coordinacion==========================================+
router.get('/detallesPersonalCoordinacion/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('coordinacion/detallesPersonalCoordinacion', { tabla , $ , dt , buttons });
});

//detalle de personal ==========================================+
router.get('/detallesPersonal/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('coordinacion/detallePersonal', { tabla , $ , dt , buttons });
});

//detalles de personal para coordinaciones==========================================+
router.get('/detallesPersonalCoordinaciones/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('coordinacion/detallePersonalCoordinaciones', { tabla , $ , dt , buttons });
});


//ELIMINAR detalles de personal para persona==========================================+
router.get('/eliminarPersonal/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    
    await pool.query('DELETE FROM instructores WHERE usuario = ?', [usuario]);
    //console.log(idautor);

    req.flash('success', 'Instructor Eliminado');
    res.redirect('/data');
});

//EDITAR DATOS PERSONALES  ==========================================+
router.get('/mostrarDatosP/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('layouts/mostrarDatosP', { tabla , $ , dt , buttons });
});
router.post('/mostrarDatosP', isLoggedInd, async (req, res) =>{
    //console.log(tabla);    
    const { id,usuario,nombre,apellido,fechanacimiento,sexo,ecivil,hijos,nhijos,profesion,telefono, email } = req.body;
    const newdata = { nombre,apellido,fechanacimiento,sexo,ecivil,hijos,nhijos,profesion,telefono, email }; 
    await pool.query('UPDATE instructores set ? WHERE id = ?', [newdata, id]);
    req.flash('success', 'Usuario actualizado');
    res.redirect('/detallesPersonal/'+[usuario]);
});
//========================================================================================================

//EDITAR DATOS INSTITUCIONALES de personal para personal==========================================+
router.get('/mostrarDatosI/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('layouts/mostrarDatosI', { tabla , $ , dt , buttons });
});
router.post('/mostrarDatosI', isLoggedInd, async (req, res) =>{
    //console.log(tabla);    
    const { id,usuario,ungido,tipoungido,lumisial } = req.body;
    const newdata = { ungido,tipoungido,lumisial }; 
    await pool.query('UPDATE instructores set ? WHERE id = ?', [newdata, id]);
    req.flash('success', 'Usuario actualizado');
    res.redirect('/detallesPersonal/'+[usuario]);
});
//===============================================================================================+

//EDITAR DATOS de personal para COORDINACION==========================================+
router.get('/mostrarDatosC/:usuario', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { usuario } = req.params; 
    const tabla = await pool.query('SELECT * FROM instructores WHERE usuario = ? ORDER BY id DESC', [usuario]);
    res.render('layouts/mostrarDatosC', { tabla , $ , dt , buttons });
});
router.post('/mostrarDatosC', isLoggedInd, async (req, res) =>{
    //console.log(tabla);    
    const { id,usuario,cargo,estado,diocesis,estadosrecorridos,estatus  } = req.body;
    const newdata = { cargo,estado,diocesis,estadosrecorridos,estatus }; 
    await pool.query('UPDATE instructores set ? WHERE id = ?', [newdata, id]);
    req.flash('success', 'Usuario actualizado');
    res.redirect('/detallesPersonalCoordinacion/'+[usuario]);
});

//==========================================================================================================+

//Editar datos Primera camara Personal============================================================================================+
router.get('/mostrarDatosPersonales/:cedula', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { cedula } = req.params; 
    const tabla = await pool.query('SELECT * FROM inscritos WHERE cedula = ? ORDER BY id DESC', [cedula]);
    res.render('layouts/mostrarDatosPersonales', { tabla , $ , dt , buttons });
});
router.post('/mostrarDatosPersonales', isLoggedInd, async (req, res) =>{
    //console.log(tabla);    
    const { cedula,nombre,apellido,email,telefono } = req.body;
    const newdata = { nombre,apellido,email,telefono }; 
    await pool.query('UPDATE inscritos set ? WHERE cedula = ?', [newdata, cedula]);
    req.flash('success', 'Primera Camara actualizada');
    res.redirect('/detallesPrimeraCamara/'+[cedula]);
});
//Editar datos Primera camara Coordinacion============================================================================================+
router.get('/mostrarDatosInstitucionales/:cedula', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { cedula } = req.params; 
    const tabla = await pool.query('SELECT * FROM inscritos WHERE cedula = ? ORDER BY id DESC', [cedula]);
    res.render('layouts/mostrarDatosInstitucionales', { tabla , $ , dt , buttons });
});
router.post('/mostrarDatosInstitucionales', isLoggedInd, async (req, res) =>{
    //console.log(tabla);    
    const { cedula,estado,diocesis,lumisial,instructor,tipo,tipocamara,estatus,acin,final } = req.body;
    const newdata = { estado,diocesis,lumisial,instructor,tipo,tipocamara,estatus,acin,final }; 
    await pool.query('UPDATE inscritos set ? WHERE cedula = ?', [newdata, cedula]);
    req.flash('success', 'Primera Camara actualizada');
    res.redirect('/detallesPrimeraCamara/'+[cedula]);
});
//Detalles datos Primera camara Personal============================================================================================+
router.get('/detallesPrimeraCamara/:cedula', isLoggedInd, async (req, res) =>{
    //console.log(tabla);
    const { cedula } = req.params; 
    const tabla = await pool.query('SELECT * FROM inscritos WHERE cedula = ? ORDER BY id DESC', [cedula]);
    res.render('coordinacion/detallePrimeraC', { tabla , $ , dt , buttons });
});
//Editar datos Primera camara Coordinacion============================================================================================+

//estadisticas ========================================================================================+

router.get('/charts', isLoggedInd, async (req, res) =>{
    const estadistica = await pool.query('SELECT rama, COUNT(rama) AS repeticiones FROM instructores GROUP BY rama ORDER BY repeticiones DESC');
    const chartsexo = await pool.query('SELECT sexo, COUNT(sexo) AS rsexo FROM instructores GROUP BY sexo ORDER BY rsexo DESC');
    const chartecivil = await pool.query('SELECT ecivil, COUNT(ecivil) AS recivil FROM instructores GROUP BY ecivil ORDER BY recivil DESC');
    const chartprofesion = await pool.query('SELECT profesion, COUNT(profesion) AS rprofesion FROM instructores GROUP BY profesion ORDER BY rprofesion DESC');
    const chartcargo = await pool.query('SELECT cargo, COUNT(cargo) AS rcargo FROM instructores GROUP BY cargo ORDER BY rcargo DESC');
    const chartungido = await pool.query('SELECT ungido, COUNT(ungido) AS rungido FROM instructores GROUP BY ungido ORDER BY rungido DESC');
    const charttipoungido = await pool.query('SELECT tipoungido, COUNT(tipoungido) AS rtipoungido FROM instructores GROUP BY tipoungido ORDER BY rtipoungido DESC');
    const chartestado = await pool.query('SELECT estado, COUNT(estado) AS restado FROM instructores GROUP BY estado ORDER BY restado DESC');
    const chartdiocesis = await pool.query('SELECT diocesis, COUNT(diocesis) AS rdiocesis FROM instructores GROUP BY diocesis ORDER BY rdiocesis DESC');
    const chartestatus = await pool.query('SELECT estatus, COUNT(estatus) AS restatus FROM instructores GROUP BY estatus ORDER BY restatus DESC');
    //console.log(estadistica);
   

    res.render('coordinacion/charts', { estadistica,chartsexo,chartecivil,chartprofesion,chartcargo,chartungido,charttipoungido,chartestado,chartdiocesis,chartestatus });
});
//==========================================================================================================+
//==========================================================================================================+
//==========================================================================================================+

module.exports = router;