<?php 
include_once "../../clases/Gestor.php";



$Gestor = new Gestor();

$autor = $_POST['autor'];
$rama = $_POST['rama'];
$cargo = $_POST['cargo'];

if ($_FILES['archivos']['size'] > 0) {

	

	$totalArchivos = count($_FILES['archivos']['name']);
	for ($i=0; $i < $totalArchivos; $i++) { 

		$nombreArchivo = $_FILES['archivos']['name'][$i];
		$explode = explode('.', $nombreArchivo);
		$tipoArchivo = array_pop($explode);

		$rutaAlmacenamiento = $_FILES['archivos']['tmp_name'][$i];
		$rutaCarpeta = "../../archivos/".$nombreArchivo;
		$rutaFinal = "archivos/".$nombreArchivo;

		$datosRegistroArchivo = array( 'nombreArchivo' => $nombreArchivo, 
										'tipo' => $tipoArchivo, 
										'ruta' => $rutaFinal, 
										'autor' => $autor, 
										'rama' => $rama, 
										'cargo' => $cargo
									);

		if (move_uploaded_file($rutaAlmacenamiento, $rutaCarpeta)) {
			$respuesta = $Gestor->agregarRegistroArchivo($datosRegistroArchivo);
		}

	}
	echo $respuesta;
}else{
	echo 0;
}
?>