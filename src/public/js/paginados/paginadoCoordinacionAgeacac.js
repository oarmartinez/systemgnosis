$(document).ready(function(){
$('#dataInstructores').click(function(){
$("#contenido").load("vistasCoordinaciones/dataAgeacac.php");
	    									 });
$('#archivos').click(function(){
$("#contenido").load("vistasEscritorios/gestorArchivos.php");
	    									 });
$('#entregaMaterial').click(function(){
$("#contenido").load("vistasEscritorios/entregaMaterialEnsenanza.php");
	    									 });
$('#enviarMaterial').click(function(){
$("#contenido").load("vistasCoordinaciones/entregaMaterialCoordinacion.php");
	    									 });
$('#postSegunda').click(function(){
$("#contenido").load("vistasCoordinaciones/posteosSegundaCamaraCoordinaciones.php");
	    									 });
$('#postWeb').click(function(){
$("#contenido").load("vistasCoordinaciones/postWeb.php");
	    									 });
$('#primerasCamaras').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/dataPrimerasCamaras.php");
	    									 });
$('#libros').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/registroLibros.php");
	    									 });
$('#estadisticas').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/estadisticas.php");
	    									 });
$('#estadisticasInstructores').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/estadisticasPorIstructor.php");
	    									 });
$('#registroCursos').click(function(){
$("#contenido").load("vistasCoordinaciones/postCurso.php");
	    									 });
$('#cursillistas').click(function(){
$("#contenido").load("vistasCoordinaciones/tablaCursillistas.php");
	    									 });
});