//declaraciones

const elementPostSegunda = document.getElementById("contenido_a_verPostSegunda");
const htmlPostSegunda = document.getElementById("htmlPostSegunda");


//Elementos


document.getElementById("elementos_viewPostSegunda").onclick = function() {myFunctionMostrarPostSegunda()};
document.getElementById("html_viewPostSegunda").onclick = function() {myFunctionMostrarPostSegunda()};

//funciones

function myFunctionMostrarPostSegunda() {
	elementPostSegunda.classList.toggle("abrirPOST");
	htmlPostSegunda.classList.toggle("abrirPOST");
};
