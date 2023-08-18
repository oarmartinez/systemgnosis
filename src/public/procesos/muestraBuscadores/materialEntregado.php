<?php 
	include '../../clases/conex.php';

	$salida = "";
	$query = "SELECT * FROM entregamaterial order by id desc";
	if (isset($_POST['consulta'])) {
		$q = $conn->real_escape_string($_POST['consulta']);
		$query = "SELECT * FROM entregamaterial ";
	}
	$resultado = $conn->query($query);
	if ($resultado->num_rows > 0) {
		while ($POST = $resultado->fetch_assoc()) {
			$salida.="

			<div   class='caja_posteado'>
			    <h3>TITULO: ".$POST['titulo']."</h3>
			    ".$POST['post']."
			    <div class='date'>".$POST['fecha']."</div>
	        </div>
	        
	            	";
		}
	}else{
		$salida.="<article><h3>NO HAY MATERIALES CON ESE TITULO</h3></article>";
	}

	echo $salida;

	 mysqli_close($conn);

	 ?>