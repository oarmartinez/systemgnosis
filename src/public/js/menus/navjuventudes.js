//declaraciones
const cajadatai = document.getElementById("cajadataInstructores");
const gestorArchivos = document.getElementById("cajagestorArchivos");
const cajaposteo = document.getElementById("cajaposteo");
const cajabiblioteca = document.getElementById("cajabiblioteca");
const cajaestadisticas = document.getElementById("cajaestadisticas");
const cajaregistroCursos = document.getElementById("cajaregistroCursos");



//Elementos

document.getElementById("dataInstructores").onclick = function() {mostrarboton()};
document.getElementById("gestorArchivos").onclick = function() {mostrargestorArchivos()};
document.getElementById("posteo").onclick = function() {mostrarposteo()};
document.getElementById("biblioteca").onclick = function() {mostrarbiblioteca()};
document.getElementById("estadisticas").onclick = function() {mostrarestadisticas()};
document.getElementById("registroCursos").onclick = function() {mostrarregistroCursos()};


//funciones

function mostrarboton() {
	cajadatai.classList.toggle("cajabotonnav");
	cajadatai.classList.toggle("quitar");
};
function mostrargestorArchivos() {
	gestorArchivos.classList.toggle("cajabotonnav");
	gestorArchivos.classList.toggle("quitar");
};

function mostrarposteo() {
	cajaposteo.classList.toggle("cajabotonnav");
	cajaposteo.classList.toggle("quitar");
};

function mostrarbiblioteca() {
	cajabiblioteca.classList.toggle("cajabotonnav");
	cajabiblioteca.classList.toggle("quitar");
};

function mostrarestadisticas() {
	cajaestadisticas.classList.toggle("cajabotonnav");
	cajaestadisticas.classList.toggle("quitar");
};

function mostrarregistroCursos() {
	cajaregistroCursos.classList.toggle("cajabotonnav");
	cajaregistroCursos.classList.toggle("quitar");
};