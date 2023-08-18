 <?php
include_once '../../clases/conex.php';

    $salida = "";

    if (isset($_POST['consulta'])) {
        $q = $conn->real_escape_string($_POST['consulta']);
        $query = "SELECT id, cedula, nombre, apellido, email, telefono, estado, diocesis, lumisial, instructor, tipo,tipocamara,estatus,acin,final, fecha FROM inscritos WHERE id = '$q' ";
    

    $resultado = $conn->query($query);
    if ($resultado->num_rows > 0) {
        while ($POST = $resultado->fetch_assoc()) {
            $salida.="  


            <div class='carton'>

            <h3>FICHA DE PRIMERA CAMARA</h3>
                <div class='margen'>                
                    <h3>CEDULA</h3>
                    <div class='campo_info' id='cedula' data-id_cedula='".$POST['id']."' contenteditable>".$POST['cedula']."</div>
                </div>
                <div class='margen'>                
                    <h3>NOMBRE</h3>
                    <div class='campo_info' id='nombre' data-id_nombre='".$POST['id']."' contenteditable>".$POST['nombre']."</div>
                </div>
                <div class='margen'>                
                    <h3>APELLIDO</h3>
                    <div class='campo_info' id='apellido' data-id_apellido='".$POST['id']."' contenteditable>".$POST['apellido']."</div>
                </div>
                <div class='margen'>                
                    <h3>EMAIL</h3>
                    <div class='campo_info' id='email' data-id_email='".$POST['id']."' contenteditable>".$POST['email']."</div>
                </div>
                <div class='margen'>                
                    <h3>TELEFONO</h3>
                    <div class='campo_info' id='telefono' data-id_telefono='".$POST['id']."' contenteditable>".$POST['telefono']."</div>
                </div>
                <div class='margen'>                
                    <h3>ESTADO</h3>
                    <div class='campo_info' id='estado' data-id_estado='".$POST['id']."' contenteditable>".$POST['estado']."</div>
                </div>
                <div class='margen'>                
                    <h3>DIOCESIS</h3>
                    <div class='campo_info' id='diocesis' data-id_diocesis='".$POST['id']."' contenteditable>".$POST['diocesis']."</div>
                </div>
                <div class='margen'>                
                    <h3>LUMISIAL</h3>
                    <div class='campo_info' id='lumisial' data-id_lumisial='".$POST['id']."' contenteditable>".$POST['lumisial']."</div>
                </div>
                <div class='margen'>                
                    <h3>INSTRUCTOR</h3>
                    <div class='campo_info' id='instructor' data-id_instructor='".$POST['id']."' contenteditable>".$POST['instructor']."</div>
                </div>
                <div class='margen'>                
                    <h3>TIPO </h3>
                    <div class='campo_info' id='tipo' data-id_tipo='".$POST['id']."' contenteditable>".$POST['tipo']."</div>
                </div>
                <div class='margen'>                
                    <h3>TIPO DE CAMARA</h3>
                    <div class='campo_info' id='tipocamara' data-id_tipocamara='".$POST['id']."' contenteditable>".$POST['tipocamara']."</div>
                </div>
                <div class='margen'>                
                    <h3>ESTATUS</h3>
                    <div class='campo_info' id='estatus' data-id_estatus='".$POST['id']."' contenteditable>".$POST['estatus']."</div>
                </div>
                <div class='margen'>                
                    <h3>ESTADO DE ACTIVIDAD</h3>
                    <div class='campo_info' id='acin' data-id_acin='".$POST['id']."' contenteditable>".$POST['acin']."</div>
                </div>
                <div class='margen'>                
                    <h3>FINAL</h3>
                    <div class='campo_info' id='final' data-id_final='".$POST['id']."' contenteditable>".$POST['final']."</div>
                </div>
                <div class='margen'>                
                    <h3>FECHA</h3>
                    <div class='campo_info'>".$POST['fecha']."</div>
                </div>
                <div class='margen'>                
                    <h3>ELIMINAR</h3>
                    <button id='eliminar' data-id='" . $POST['id'] . "'>ELIMINAR</button>
                </div>
            </div>

            ";
        }
    }else{
        $salida.="<article><h3>NO HAY INSCRITOS CON ESE NOMBRE</h3></article>";
    }
}
    echo $salida;
mysqli_close($conn);
?>