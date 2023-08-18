<?php 
include_once '../../clases/conex.php';


// Actualizando datos
if (!empty($_POST)) {
    if (empty($_POST['id']) || empty($_POST['texto']) || empty($_POST['columna'])) {
        echo "Todo los campos son obligatorios";
    } else {
        $id = $_POST['id'];
        $texto = $_POST['texto'];
        $columna = $_POST['columna'];
        $update = mysqli_query($conn, "UPDATE inscritos SET $columna = '$texto' WHERE id = $id");
        if ($update) {
            echo "ok";
        } else {
            echo "Error al actualizar los datos";
            exit();
        }
    }
}

// Eliminar datos
if ($_POST['action'] == "eliminar") {
    $id = $_POST['id'];
    $eliminar = mysqli_query($conn, "DELETE FROM inscritos WHERE id = $id");
    if ($eliminar) {
        echo "ok";
    } else {
        echo "Error al eliminar los datos";
    }
}
?>