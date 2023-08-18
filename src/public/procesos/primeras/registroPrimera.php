<?php 
include "../../clases/primeras.php";

$cedula = $_POST['cedula'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$email = $_POST['email'];
$telefono = $_POST['telefono'];
$estado = $_POST['estado'];
$instructor = $_POST['instructor'];
$estatus = $_POST['estatus'];

$datos = array('cedula' => $cedula,
               'nombre' => $nombre,
               'apellido' => $apellido,
               'email' => $email,
               'telefono' => $telefono,
               'estado' => $estado,
               'instructor' => $instructor,
               'estatus' => $estatus  
           );


    $primera = new Primera();
    echo $primera->agregarPrimera($datos);
   


 ?>