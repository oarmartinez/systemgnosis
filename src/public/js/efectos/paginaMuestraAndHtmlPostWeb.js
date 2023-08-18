//declaraciones

const elementPostWeb = document.getElementById("contenido_a_verPostWeb");
const htmlPostWeb = document.getElementById("htmlPostWeb");



//Elementos


document.getElementById("elementos_viewPostWeb").onclick = function() {myFunctionMostrarPostWeb()};
document.getElementById("html_viewPostWeb").onclick = function() {myFunctionMostrarPostWeb()};


//funciones


function myFunctionMostrarPostWeb() {
	elementPostWeb.classList.toggle("abrirPOST");
	htmlPostWeb.classList.toggle("abrirPOST");
};

