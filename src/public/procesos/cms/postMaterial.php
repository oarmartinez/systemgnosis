<?php 
include_once "../../clases/Cms.php";

$titulo = $_POST['titulo'];
$post = $_POST['post'];

$material = array('titulo' => $titulo,
               'post' => $post,
                );

$Cms = new Cms();
echo $Cms->agregarMaterial($material);
   


 ?>