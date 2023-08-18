<?php 
	include '../../clases/conex.php';
	session_start();
    $referencia = $_SESSION['usuario'];
    $consulta="SELECT * FROM instructores WHERE usuario = '$referencia' ";
    $resultado=mysqli_query($conn,$consulta);
    while ( $dato = $resultado -> fetch_assoc()) {
    $nombre = $dato['nombre'];
    $apellido = $dato['apellido'];
    $rama = $dato['rama'];
    $cargo = $dato['cargo'];
    $lumisial = $dato['lumisial'];
    $estado = $dato['estado'];
    $diocesis = $dato['diocesis'];
    
	}
	$salida = "";
	$query = "SELECT rama, estado, diocesis, titulo, post, fecha FROM mensajescoordinaciones WHERE rama = '$rama' AND diocesis = '$diocesis' order by id desc";

	if (isset($_POST['consulta'])) {
		$q = $conn->real_escape_string($_POST['consulta']);
		$query = "SELECT rama, estado, diocesis, titulo, post, fecha FROM mensajescoordinaciones WHERE titulo LIKE '%q%' AND diocesis = '$diocesis' AND rama = '$rama'";
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