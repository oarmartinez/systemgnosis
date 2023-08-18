<?php 
include_once "../../clases/Informe.php";

$titulo = $_POST['titulo'];
$cantidadpa = $_POST['cantidadpa'];
$cantidadpf = $_POST['cantidadpf'];
$observaciones = $_POST['observaciones'];
$autor = $_POST['autor'];
$rama = $_POST['rama'];
$cargo = $_POST['cargo'];

$nombreArchivo = $_FILES['archivo']['name'];
$rutaAlmacenamiento = $_FILES['archivo']['tmp_name'];
$rutaCarpeta = "../../informes/".$nombreArchivo;
$rutaFinal = "informes/".$nombreArchivo;

$datos = array('titulo' => $titulo,
               'cantidadpa' => $cantidadpa,
               'cantidadpf' => $cantidadpf,
               'observaciones' => $observaciones,
               'autor' => $autor,
               'rama' => $rama,
               'cargo' => $cargo,
               'ruta' => $rutaFinal );

if (move_uploaded_file($rutaAlmacenamiento, $rutaCarpeta)) {

    $informe = new Informe();
    echo $informe->agregarInforme($datos);
 }
   

?>