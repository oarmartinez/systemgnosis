$(document).ready(function() {
    //mostrar datos

   obtener_datos();
   function obtener_datos(consulta){
      $.ajax({
        url: '../procesos/muestraBuscadores/dataEnsenanza.php' ,
        type: 'POST' ,
        dataType: 'html',
        data: {consulta: consulta},
      })
      .done(function(respuesta){
        $("#busquedaData").html(respuesta);
      })
      .fail(function(){
        console.log("error");
      });
    }

    var valor = $('#buscarData').val();
    if (valor != "") {
        obtener_datos(valor);
    }else{
        obtener_datos();
    }


       //actualizar datos
function actualizar_datos(id, texto, columna) {
    $.ajax({
        url: '../procesos/actualizadores/actualizarData.php',
        type: 'POST',
        async: true,
        data: { id: id, texto: texto, columna: columna },
        success: function (response) {
            obtener_datos(valor);
        }
    });
}

    $(document).on("blur", "#usuario", function () {
        var id = $(this).data('id_usuario');
        var usuario = $(this).text();
        actualizar_datos(id,usuario,"usuario");
    });
    
    $(document).on("blur", "#nombre", function () {
        var id = $(this).data('id_nombre');
        var nombre = $(this).text();
        actualizar_datos(id,nombre,"nombre");
    });

    $(document).on("blur", "#apellido", function () {
        var id = $(this).data('id_apellido');
        var apellido = $(this).text();
        actualizar_datos(id,apellido,"apellido");
    });

    $(document).on("blur", "#cedula", function () {
        var id = $(this).data('id_cedula');
        var cedula = $(this).text();
        actualizar_datos(id,cedula,"cedula");
    });

    $(document).on("blur", "#sexo", function () {
        var id = $(this).data('id_sexo');
        var sexo = $(this).text();
        actualizar_datos(id,sexo,"sexo");
    });

    $(document).on("blur", "#fechanacimiento", function () {
        var id = $(this).data('id_fechanacimiento');
        var fechanacimiento = $(this).text();
        actualizar_datos(id,fechanacimiento,"fechanacimiento");
    });

    $(document).on("blur", "#email", function () {
        var id = $(this).data('id_email');
        var email = $(this).text();
        actualizar_datos(id,email,"email");
    });

    $(document).on("blur", "#password", function () {
        var id = $(this).data('id_password');
        var password = $(this).text();
        actualizar_datos(id,password,"password");
    });

    $(document).on("blur", "#rama", function () {
        var id = $(this).data('id_rama');
        var rama = $(this).text();
        actualizar_datos(id,rama,"rama");
    });

    $(document).on("blur", "#cargo", function () {
        var id = $(this).data('id_cargo');
        var cargo = $(this).text();
        actualizar_datos(id,cargo,"cargo");
    });

    $(document).on("blur", "#estado", function () {
        var id = $(this).data('id_estado');
        var estado = $(this).text();
        actualizar_datos(id,estado,"estado");
    });

    $(document).on("blur", "#diocesis", function () {
        var id = $(this).data('id_diocesis');
        var diocesis = $(this).text();
        actualizar_datos(id,diocesis,"diocesis");
    });

    $(document).on("blur", "#lumisial", function () {
        var id = $(this).data('id_lumisial');
        var lumisial = $(this).text();
        actualizar_datos(id,lumisial,"lumisial");
    });

    $(document).on("blur", "#estatus", function () {
        var id = $(this).data('id_estatus');
        var estatus = $(this).text();
        actualizar_datos(id,estatus,"estatus");
    });

    $(document).on("blur", "#estadosrecorridos", function () {
        var id = $(this).data('id_estadosrecorridos');
        var estadosrecorridos = $(this).text();
        actualizar_datos(id,estadosrecorridos,"estadosrecorridos");
    });

    $(document).on("blur", "#fecha", function () {
        var id = $(this).data('id_fecha');
        var fecha = $(this).text();
        actualizar_datos(id,fecha,"fecha");
    });

    $(document).on("click", "#eliminar", function () {
        if (confirm("Esta seguro de eliminar")) {
            var id = $(this).data("id");
            var action = "eliminar";
            $.ajax({
                url: '../procesos/actualizadores/actualizarData.php',
                type: 'POST',
                async: true,
                data: { id: id, action:action},
                success: function (response) {
                    obtener_datos(valor);
                }
            });
        }
    });

});

