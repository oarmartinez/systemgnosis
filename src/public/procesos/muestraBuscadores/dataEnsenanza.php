<?php
include_once '../../clases/conex.php';

    $salida = "";

    if (isset($_POST['consulta'])) {
        $q = $conn->real_escape_string($_POST['consulta']);
        $query = "SELECT id, usuario, cedula, fechanacimiento, sexo, nombre, apellido, rama, cargo, estado, diocesis, lumisial, estadosrecorridos, estatus, email, password, img, fecha FROM instructores where id = '$q' ";

        $resultado = $conn->query($query);
    if ($resultado->num_rows > 0) {
        while ($POST = $resultado->fetch_assoc()) {
            $salida.="  

        <article>

            <div class='imginstructor'><img src=../".$POST['img']."></div>
            <div class='datospersonales'>      
                <p>USUARIO: </p>
                <div class='campo'>
                    <span id='usuario' data-id_usuario='".$POST['id']."' contenteditable>".$POST['usuario']."</span>
                </div>
                <p>CEDULA: </p>
                <div class='campo'>
                    <span id='cedula' data-id_cedula='".$POST['id']."' contenteditable>".$POST['cedula']."</span>
                </div>
                <p>FECHA DE NACIMIENTO: </p>
                <div class='campo'>
                    <span id='fechanacimiento' data-id_fechanacimiento='".$POST['id']."' contenteditable>".$POST['fechanacimiento']."</span>
                </div>
                <p>SEXO: </p>
                <div class='campo'>
                    <span id='sexo' data-id_sexo='".$POST['id']."' contenteditable>".$POST['sexo']."</span>
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
                    <p>CARGO: </p>
                    <div class='campo'>
                        <span id='cargo' data-id_cargo='".$POST['id']."' contenteditable>".$POST['cargo']."</span>
                    </div>
                    <p>ESTADO: </p>
                    <div class='campo'>
                        <span id='estado' data-id_estado='".$POST['id']."' contenteditable>".$POST['estado']."</span>
                    </div>
                    <p>DIOCESIS: </p>
                    <div class='campo'>
                        <span id='diocesis' data-id_diocesis='".$POST['id']."' contenteditable>".$POST['diocesis']."</span>
                    </div>
                </div>
                <div class='datosinstitucionales'>
                    <p>LUMISIAL: </p>
                    <div class='campo'>
                        <span id='lumisial' data-id_lumisial='".$POST['id']."' contenteditable>".$POST['lumisial']."</span>
                    </div>
                    <p>ESTATUS: </p>
                    <div class='campo'>
                        <span id='estatus' data-id_estatus='".$POST['id']."' contenteditable>".$POST['estatus']."</span> 
                    </div> 
                    <p>ESTADOS RECORRIDOS: </p> 
                    <div class='campo'>    
                        <span id='estadosrecorridos' data-id_estadosrecorridos='".$POST['id']."' contenteditable>".$POST['estadosrecorridos']."</span>
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
        $salida.="<article><h3>NO HAY INSTRUCTOR CON ESE NOMBRE</h3></article>";
    }
 }

    

    echo $salida;
mysqli_close($conn);
?>