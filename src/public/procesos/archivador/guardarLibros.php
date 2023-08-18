<?php 
include_once "../../clases/Libros.php";




$maestro = $_POST['maestro'];
$categoria = $_POST['categoria'];
$camara = $_POST['camara'];


$nombreArchivo = $_FILES['archivos']['name'];
$explode = explode('.', $nombreArchivo);
$tipoArchivo = array_pop($explode);

$rutaAlmacenamiento = $_FILES['archivos']['tmp_name'];
$rutaCarpeta = "../../libros/".$nombreArchivo;
$rutaFinal = "libros/".$nombreArchivo;

$nombreImagen = $_FILES['imagen']['name'];
$explodei = explode('.', $nombreImagen);
$tipoImagen = array_pop($explodei);

$rutaAlmacenamientoImagen = $_FILES['imagen']['tmp_name'];
$rutaCarpetaImagen = "../../libros/".$nombreImagen;
$rutaFinalImagen = "libros/".$nombreImagen;


$datos = array('nombreArchivo' => $nombreArchivo,
			   'tipoArchivo' => $tipoArchivo,
               'rutaFinal' => $rutaFinal,
               'nombreImagen' => $nombreImagen,
			   'tipoImagen' => $tipoImagen,
               'rutaFinalImagen' => $rutaFinalImagen,
			   'maestro' => $maestro,
               'categoria' => $categoria,
               'camara' => $camara );

if (move_uploaded_file($rutaAlmacenamiento, $rutaCarpeta) AND move_uploaded_file($rutaAlmacenamientoImagen, $rutaCarpetaImagen)) {

    
	$Libro = new Libro();
    echo $Libro->agregarRegistroArchivo($datos);
 }
?>