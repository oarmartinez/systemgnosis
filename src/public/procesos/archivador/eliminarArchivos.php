<?php 
session_start();
require_once "../../clases/Gestor.php";
$Gestor = new Gestor();
$idArchivo = $_POST['idArchivo'];

$rutaArchivo = $Gestor->obtenerRutaArchivo($idArchivo);

$rutaEliminar = "../../".$rutaArchivo;

	if (unlink($rutaEliminar)) {
		echo $Gestor->eliminarRegistroArchivo($idArchivo);
	}else{
		echo 0;
	}


 ?>