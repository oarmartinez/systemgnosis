const passport = require('passport');
const pool = require('../database');
const LocalStrategy = require('passport-local').Strategy;
const helpers = require('../lib/helpers');

//sistema login===================================+
passport.use('local.signin', new LocalStrategy({
    usernameField: 'usuario',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, usuario, password, done) =>{
    console.log(req.body)
    //console.log(usuario)
    //console.log(password)
    //consulta sql
    const rows = await pool.query('SELECT * FROM instructores WHERE usuario = ?', [usuario]);
    if (rows.length > 0) {
        const user = rows[0];
        const validPassword = await helpers.matchPassword(password, user.password);
        if (validPassword) {
            done(null, user, req.flash('success','bienvenido' + user.usuario));
        } else {
            done(null, false, req.flash('message','Usuario o contraseña incorrecto'));
        }

    } else {
        return done(null, false, req.flash('message','el usuario no existe'));
    }
    
}));
// sistema sign up=============================+
passport.use('local.signup', new LocalStrategy({
    usernameField: 'usuario',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, usuario, password, done) =>{
    const { nombre } = req.body;
    const newUser = {
        usuario,
        nombre,
        password
    };
    newUser.password = await helpers.encryptPassword(password);    
    const rows = await pool.query('SELECT * FROM instructores WHERE usuario = ?', [newUser.usuario]);
    if (rows.length > 0) {
        done(null, false, req.flash('message','Usuario Repetido'));
    } else {
        const result = await pool.query('INSERT INTO instructores set ?', [newUser]);
        newUser.id = result.insertId;
        //console.log(result);
        return done(null, newUser);
    }
    
}));



// sistema registro=============================+
/*passport.use('local.registro', new LocalStrategy({
    usernameField: 'usuario',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, usuario, password, done) =>{
    const {cedula, fechanacimiento,sexo,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,img} = req.body;
    const newUser = {
        cedula, fechanacimiento,sexo,usuario,nombre,apellido,rama,cargo,estado,diocesis,lumisial,estadosrecorridos,estatus,email,password,img
    };
    newUser.password = await helpers.encryptPassword(password);    
    const rows = await pool.query('SELECT * FROM instructores WHERE usuario = ?', [newUser.usuario]);
    if (rows.length > 0) {
        done(null, false, req.flash('message','Usuario Repetido'));
    } else {
        const result = await pool.query('INSERT INTO instructores set ?', [newUser]);
        newUser.id = result.insertId;
        //console.log(result);
        return done(null, newUser);
    }
    
}));*/

// acá guardamos el id del usuario en la sesion==============================+
passport.serializeUser((usuario, done) =>{
    done(null, usuario.id);
});

passport.deserializeUser(async (id, done) =>{
    const rows = await pool.query('SELECT * FROM instructores WHERE id = ?', [id]);
    done(null, rows[0]);
});