$(document).ready(function(){
$('#dataInstructores').click(function(){
$("#contenido").load("/coordinacion/dataInstructores");
	    									 });
$('#archivos').click(function(){
$("#contenido").load("vistasEscritorios/gestorArchivos.php");
	    									 });
$('#entregaMaterial').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/entregaDeMaterial.php");
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
$('#misPrimerasCamaras').click(function(){
$("#contenido").load("vistasEscritorios/dataPrimerasCamarasIndividuales.php");
	    									 });
$('#libros').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/registroLibros.php");
	    									 });
$('#biblioteca').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/tablaLibros.php");
	    									 });
$('#estadisticasPersonal').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/estadisticasGeneralesEenseñanza.php");
	    									 });
$('#estadisticas').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/estadisticas.php");
	    									 });
$('#estadisticasInstructores').click(function(){
$("#contenido").load("vistasCoordinacionEnsenanza/estadisticasIndividuales.php");
	    									 });
$('#registroCursos').click(function(){
$("#contenido").load("vistasCoordinaciones/postCurso.php");
	    									 });
$('#cursillistas').click(function(){
$("#contenido").load("vistasCoordinaciones/tablaCursillistas.php");
	    									 });
});