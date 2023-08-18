<?php 
include_once "../../clases/Cms.php";

$rama = $_POST['rama'];
$tipo = $_POST['tipo'];
$estado = $_POST['estado'];
$diocesis = $_POST['diocesis'];
$titulo = $_POST['titulo'];
$imgdestacada = $_POST['imgdestacada'];
$descripcion = $_POST['descripcion'];
$post = $_POST['post'];

$material = array('rama' => $rama,
                'tipo' => $tipo,
                'estado' => $estado,
                'diocesis' => $diocesis,
                'titulo' => $titulo,
                'imgdestacada' => $imgdestacada,
                'descripcion' => $descripcion,
                'post' => $post
                );

$Cms = new Cms();
echo $Cms->agregarPostSegunda($material);
   


 ?>