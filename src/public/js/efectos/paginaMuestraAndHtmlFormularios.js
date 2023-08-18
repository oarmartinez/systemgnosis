//declaraciones

const elementFormularioCurso = document.getElementById("contenido_a_verFormularioCurso");
const htmlFormularioCurso = document.getElementById("htmlFormularioCurso");



//Elementos


document.getElementById("elementos_viewFormularioCurso").onclick = function() {myFunctionMostrarFormularioCurso()};
document.getElementById("html_viewFormularioCurso").onclick = function() {myFunctionMostrarFormularioCurso()};


//funciones


function myFunctionMostrarFormularioCurso() {
	elementFormularioCurso.classList.toggle("abrirPOST");
	htmlFormularioCurso.classList.toggle("abrirPOST");
};

