<?php 
include_once "../../clases/Cms.php";

$rama = $_POST['rama'];
$estado = $_POST['estado'];
$diocesis = $_POST['diocesis'];
$titulo = $_POST['titulo'];
$post = $_POST['post'];

$material = array('rama' => $rama,'estado' => $estado,'diocesis' => $diocesis,'titulo' => $titulo,'post' => $post
                );

$Cms = new Cms();
echo $Cms->agregarMaterialCoordinacion($material);
   


 ?>