<?php 
include_once "../../clases/Usuario.php";

$fecha  = date("dHi");
$no  = rand(10, 999999999999);
$password = sha1($_POST['password']);
$cedula = $_POST['cedula'];
$fechanacimiento = $_POST['fechanacimiento'];
$sexo = $_POST['sexo'];
$usuario = $_POST['usuario'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$rama = $_POST['rama'];
$cargo = $_POST['cargo'];
$estado = $_POST['estado'];
$diocesis = $_POST['diocesis'];
$lumisial = $_POST['lumisial'];
$estadosrecorridos = $_POST['estadosrecorridos'];
$estatus = $_POST['estatus'];
$email = $_POST['email'];

$nombreArchivo = $_FILES['imagen']['name'];
$rutaAlmacenamiento = $_FILES['imagen']['tmp_name'];
$rutaCarpeta = "../../img/fotosUsuarios/".$no.$fecha.$nombreArchivo;
$rutaFinal = "img/fotosUsuarios/".$no.$fecha.$nombreArchivo;

$datos = array('usuario' => $usuario,
               'cedula' => $cedula,
               'fechanacimiento' => $fechanacimiento,
               'sexo' => $sexo,
               'nombre' => $nombre,
               'apellido' => $apellido,
               'rama' => $rama,
               'cargo' => $cargo,
               'estado' => $estado,
               'diocesis' => $diocesis,
               'lumisial' => $lumisial,
               'estadosrecorridos' => $estadosrecorridos, 
               'estatus' => $estatus, 
               'email' => $email, 
               'password' => $password, 
               'ruta' => $rutaFinal );

if (move_uploaded_file($rutaAlmacenamiento, $rutaCarpeta)) {

    $usuario = new Usuario();
    echo $usuario->agregarUsuario($datos);
 }
   


 ?>