<?php 
include "../../clases/primerasIndividuales.php";

$cedula = $_POST['cedula'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$email = $_POST['email'];
$telefono = $_POST['telefono'];
$tipo = $_POST['tipo'];
$tipocamara = $_POST['tipocamara'];
$estado = $_POST['estado'];
$diocesis = $_POST['diocesis'];
$instructor = $_POST['instructor'];
$estatus = $_POST['estatus'];
$acin = $_POST['acin'];
$final = $_POST['final'];

$datos = array('cedula' => $cedula,
               'nombre' => $nombre,
               'apellido' => $apellido,
               'email' => $email,
               'telefono' => $telefono,
               'estado' => $estado,
               'diocesis' => $diocesis,
               'instructor' => $instructor,
               'tipo' => $tipo,
               'tipocamara' => $tipocamara,
               'estatus' => $estatus,  
               'acin' => $acin,
               'final' => $final,
           );


    $cedula = new PrimeraIndividual();
    echo $cedula->agregarPrimeraIndividual($datos);
   


 ?>