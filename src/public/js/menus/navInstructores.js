//declaraciones

const cajadatai = document.getElementById("cajadataInstructores");
const gestorArchivos = document.getElementById("cajagestorArchivos");
const cajaposteo = document.getElementById("cajaposteo");
const cajaprimerasCamaras = document.getElementById("cajaprimerasCamaras");
const cajabiblioteca = document.getElementById("cajabiblioteca");
const cajaestadisticas = document.getElementById("cajaestadisticas");
const cajaregistroCursos = document.getElementById("cajaregistroCursos");



//Elementos

document.getElementById("dataInstructores").onclick = function() {mostrarboton()};
document.getElementById("gestorArchivos").onclick = function() {mostrargestorArchivos()};
document.getElementById("posteo").onclick = function() {mostrarposteo()};
document.getElementById("primerasCamaras").onclick = function() {mostrarprimerasCamaras()};
document.getElementById("biblioteca").onclick = function() {mostrarbiblioteca()};
document.getElementById("estadisticas").onclick = function() {mostrarestadisticas()};


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

function mostrarprimerasCamaras() {
	cajaprimerasCamaras.classList.toggle("cajabotonnav");
	cajaprimerasCamaras.classList.toggle("quitar");
};

function mostrarbiblioteca() {
	cajabiblioteca.classList.toggle("cajabotonnav");
	cajabiblioteca.classList.toggle("quitar");
};

function mostrarestadisticas() {
	cajaestadisticas.classList.toggle("cajabotonnav");
	cajaestadisticas.classList.toggle("quitar");
};
