<?php 
include_once "../../clases/Cms.php";

$usuario = $_POST['usuario'];
$rama = $_POST['rama'];
$titulo = $_POST['titulo'];
$imgdestacada = $_POST['imgdestacada'];
$nombrecurso = $_POST['nombrecurso'];
$descripcion = $_POST['descripcion'];
$post = $_POST['post'];

$material = array('usuario' => $usuario,
				'rama' => $rama,
				'titulo' => $titulo,
                'imgdestacada' => $imgdestacada,
                'nombrecurso' => $nombrecurso,
                'descripcion' => $descripcion,
                'post' => $post
                );

$Cms = new Cms();
echo $Cms->postCursos($material);
   


 ?>