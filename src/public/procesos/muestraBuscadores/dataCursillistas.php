<?php
include_once '../../clases/conex.php';

    $salida = "";

    if (isset($_POST['consulta'])) {
        $q = $conn->real_escape_string($_POST['consulta']);
        $query = "SELECT id,rama,usuario,estado,lumisial,cedula,nombre,apellido,email,telefono,foto,fecha FROM cursillistas where id = '$q' ";

        $resultado = $conn->query($query);
    if ($resultado->num_rows > 0) {
        while ($POST = $resultado->fetch_assoc()) {
            $salida.="  

        <article>

            <div class='imginstructor'><img src=../../../segundacamara/".$POST['foto']."></div>
            <div class='datospersonales'>      
                <p>INSTRUCTOR: </p>
                <div class='campo'>
                    <span id='usuario' data-id_usuario='".$POST['id']."' contenteditable>".$POST['usuario']."</span>
                </div>
                <p>CEDULA: </p>
                <div class='campo'>
                    <span id='cedula' data-id_cedula='".$POST['id']."' contenteditable>".$POST['cedula']."</span>
                </div>
                <p>NOMBRE: </p>
                <div class='campo'>
                    <span id='nombre' data-id_nombre='".$POST['id']."' contenteditable> ".$POST['nombre']."</span>
                </div>
                <p>APELLIDO: </p>
                <div class='campo'>
                    <span id='apellido' data-id_apellido='".$POST['id']."' contenteditable>".$POST['apellido']."</span>
                </div>
                <p>CORREO: </p>
                <div class='campo'>
                    <span id='email' data-id_email='".$POST['id']."' contenteditable>".$POST['email']."</span>
                </div>                     
            </div>
            <div class='datosinstitucionales'>
                    <p>RAMA: </p>
                    <div class='campo'>
                        <span id='rama' data-id_rama='".$POST['id']."' contenteditable>".$POST['rama']."</span>
                    </div>
                    <p>ESTADO: </p>
                    <div class='campo'>
                        <span id='estado' data-id_estado='".$POST['id']."' contenteditable>".$POST['estado']."</span>
                    </div>
                </div>
                <div class='datosinstitucionales'>
                    <p>LUMISIAL: </p>
                    <div class='campo'>
                        <span id='lumisial' data-id_lumisial='".$POST['id']."' contenteditable>".$POST['lumisial']."</span>
                    </div>
                    <p>FECHA INSCRIPCIÓN: </p>
                    <div class='campo'>
                        <span id='fecha' data-id_fecha='".$POST['id']."' contenteditable>".$POST['fecha']."</span> 
                    </div>
                </div>
            <button id='eliminar' data-id='" . $POST['id'] . "'>ELIMINAR</button>
           
        </article>            

            ";
        }
    }else{
        $salida.="<article><h3>NO HAY CURSILLISTAS CON ESE NOMBRE</h3></article>";
    }
 }

    

    echo $salida;
mysqli_close($conn);
?>