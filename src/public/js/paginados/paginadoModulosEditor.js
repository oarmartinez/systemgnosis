$(document).ready(function(){
$('#titleg').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/titulosGrandes.hbs");
});

$('#titlem').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/titulosMedianos.hbs");
	    									 });

$('#titles').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/titulosPeque.hbs");
	    									 });

$('#imgT').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/imagenesTexto.hbs");		 });

$('#textos').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/textos.hbs");
	    									 });

$('#CL').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/conceptosListas.hbs");
	    									 });

$('#Archi').click(function(){
$("#caja_lector_menu").load("/procesos/bloquesCMS/archivos.hbs");        });

});