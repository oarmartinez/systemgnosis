<?php
include_once '../../clases/conex.php';
    $sumatecnotronica = 0;
    $sumapresencial = 0;
    $sumafe = 0;
    $sumafse = 0;
    $sumaactivo = 0;
    $sumainactivo = 0;
    $sumacamarabasica = 0;
    $sumacamaraavanzada = 0;
    $sumacamarareingreso = 0;
    $sumaporasimilar = 0;
    $sumaasimilado = 0;
    $salida = "";

if (isset($_POST['consulta'])) {
    
    $q = $conn->real_escape_string($_POST['consulta']);
    $query = "SELECT * FROM inscritos where instructor LIKE '%$q%' order by nombre ASC ";

    $resultado = $conn->query($query);
    if ($resultado->num_rows > 0) {
        while ($resul = $resultado->fetch_assoc()) {
            $tecnotronica = $resul['tecnotronica'];
            $presencial = $resul['presencial'];
            $fe = $resul['fe'];
            $fse = $resul['fse'];
            $activo = $resul['activo'];
            $inactivo = $resul['inactivo'];
            $camarabasica = $resul['camarabasica'];
            $camaraavanzada = $resul['camaraavanzada'];
            $camarareingreso = $resul['camarareingreso'];
            $porasimilar = $resul['porasimilar'];
            $asimilado = $resul['asimilado'];

        
            $sumatecnotronica += $tecnotronica;
            $sumapresencial += $presencial;
            $sumafe += $fe;
            $sumafse += $fse;
            $sumaactivo += $activo;
            $sumainactivo += $inactivo;
            $sumacamarabasica += $camarabasica;
            $sumacamaraavanzada += $camaraavanzada;
            $sumacamarareingreso += $camarareingreso;
            $sumaporasimilar += $porasimilar;
            $sumaasimilado += $asimilado;
            $totalprimerascamaras = $sumatecnotronica + $sumapresencial;
        }
            $salida.="  
                <div class='carton'>TOTAL PRIMERAS CAMARAS TECNOTRONICA: $sumatecnotronica</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS PRESENCIALES: $sumapresencial</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS FINALIZADAS CON EXITO: $sumafe</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS FINALIZADAS SIN EXITO: $sumafse</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS BASICAS: $sumacamarabasica</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS AVANZADAS: $sumacamaraavanzada</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS REINGRESO: $sumacamarareingreso</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS ASIMILADO: $sumaasimilado</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS POR ASIMILAR: $sumaporasimilar</div>
                <div class='carton'>TOTAL PRIMERAS CAMARAS : $totalprimerascamaras</div>

            ";
        
    }else{
        $salida.="<article><h3>NO HAY INSTRUCTOR CON ESE NOMBRE</h3></article>";
    }

    echo $salida;
}

mysqli_close($conn);
?>