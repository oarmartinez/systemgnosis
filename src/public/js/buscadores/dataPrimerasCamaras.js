$(document).ready(function() {
    //mostrar datos

   obtener_datos();
   function obtener_datos(consulta){
      $.ajax({
        url: '../procesos/muestraBuscadores/dataPrimerasCamaras.php' ,
        type: 'POST' ,
        dataType: 'html',
        data: {consulta: consulta},
      })
      .done(function(respuesta){
        $("#busquedaPC").html(respuesta);
      })
      .fail(function(){
        console.log("error");
      });
    }


    var valor = $('#buscarPC').val();
    if (valor != "") {
        obtener_datos(valor);
    }else{
        obtener_datos();
    }


    //actualizar datos
function actualizar_datos(id, texto, columna) {
    $.ajax({
        url: '../procesos/actualizadores/actualizarDataPrimerasCamaras.php',
        type: 'POST',
        async: true,
        data: { id: id, texto: texto, columna: columna },
        success: function (response) {
            obtener_datos(valor);
        }
    });
}


    $(document).on("blur", "#cedula", function () {
        var id = $(this).data('id_cedula');
        var cedula = $(this).text();
        actualizar_datos(id,cedula,"cedula");

    });

    $(document).on("blur", "#nombre", function () {
        var id = $(this).data('id_nombre');
        var nombre = $(this).text();
        actualizar_datos(id,nombre,"nombre");

    });

    $(document).on("blur", "#apellido", function () {
        var id = $(this).data('id_apellido');
        var apellido = $(this).text();
        actualizar_datos(id, apellido, "apellido");

    });

    $(document).on("blur", "#email", function () {
        var id = $(this).data('id_email');
        var email = $(this).text();
        actualizar_datos(id, email, "email");

    });

    $(document).on("blur", "#telefono", function () {
        var id = $(this).data('id_telefono');
        var telefono = $(this).text();
        actualizar_datos(id,telefono,"telefono");

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
        actualizar_datos(id, lumisial, "lumisial");

    });

    $(document).on("blur", "#instructor", function () {
        var id = $(this).data('id_instructor');
        var instructor = $(this).text();
        actualizar_datos(id, instructor, "instructor");

    });


    $(document).on("blur", "#tipo", function () {
        var id = $(this).data('id_tipo');
        var tipo = $(this).text();
        actualizar_datos(id,tipo,"tipo");

    }); 

    $(document).on("blur", "#tipocamara", function () {
        var id = $(this).data('id_tipocamara');
        var tipocamara = $(this).text();
        actualizar_datos(id,tipocamara,"tipocamara");

    }); 

    $(document).on("blur", "#estatus", function () {
        var id = $(this).data('id_estatus');
        var estatus = $(this).text();
        actualizar_datos(id,estatus,"estatus");

    }); 

    $(document).on("blur", "#acin", function () {
        var id = $(this).data('id_acin');
        var acin = $(this).text();
        actualizar_datos(id,acin,"acin");

    }); 


    $(document).on("blur", "#final", function () {
        var id = $(this).data('id_final');
        var final = $(this).text();
        actualizar_datos(id,final,"final");

    }); 

    $(document).on("click", "#eliminar", function () {
        if (confirm("Esta seguro de eliminar")) {
            var id = $(this).data("id");
            var action = "eliminar";
            $.ajax({
                url: '../procesos/actualizadores/actualizarDataPrimerasCamaras.php',
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

