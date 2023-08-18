//declaraciones
const element = document.getElementById("contenido_a_ver");
const html = document.getElementById("html");



//Elementos

document.getElementById("elementos_view").onclick = function() {myFunctionMostrarPost()};
document.getElementById("html_view").onclick = function() {myFunctionMostrarPost()};


//funciones

function myFunctionMostrarPost() {
	element.classList.toggle("abrirPOST");
	html.classList.toggle("abrirPOST");
};

