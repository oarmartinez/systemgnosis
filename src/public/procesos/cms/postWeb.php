<?php 
include_once "../../clases/Cms.php";

$rama = $_POST['rama'];
$estado = $_POST['estado'];
$titulo = $_POST['titulo'];
$post = $_POST['post'];

$material = array('rama' => $rama,'estado' => $estado,'titulo' => $titulo,'post' => $post
                );

$Cms = new Cms();
echo $Cms->postWeb($material);
   


 ?>