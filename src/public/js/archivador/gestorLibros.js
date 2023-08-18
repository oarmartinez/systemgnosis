function guardarArchivos(){
		var formData = new FormData(document.getElementById('fmGuardarArchivos'));
		$.ajax({
			method: "POST",
			url: "procesos/archivador/guardarlibros.php",
			datatype: "html",
			data: formData,
			cache: false,
			contentType: false,
			processData: false,
			success:function(respuesta){
				console.log(respuesta);
				respuesta = respuesta.trim();
					if (respuesta == 1) {
                  	$('#fmGuardarArchivos')[0].reset();
		  				$('#tablaGestorArchivo').load('vistasEscritorio/archivos.php');
	                  swal(":P","Agregado con exito!!!","success");
	                }else{
	                  $('#fmGuardarArchivos')[0].reset();
		  				$('#tablaGestorArchivo').load('vistasEscritorio/archivos.php');
	                  swal("X(","Negativo!!!","Error");
	                }

			}
		});
		return false;
	}

function eliminarArchivo(idArchivo){
		swal({
		  title: "Estas seguro de eliminar?",
		  text: "No podras recuperar la carpeta!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		  	$.ajax({
		  		type: "POST",
		  		data: "idArchivo=" + idArchivo,
		  		url: "procesos/archivador/eliminarlibros.php",
		  		success:function(respuesta){
		  			respuesta = respuesta.trim();
		  			if (respuesta == 1) {
		  				$('#tablaGestorArchivo').load('vistasEscritorio/archivos.php');
		  				swal("Listo! Archivo borrado!", {
      					icon: "success",
      					});
		  			}else{
		  				swal("No se Borro!");
		  			}
		  		}
		  	});
		  } 
		});
}

function obtenerArchivoPorId(idArchivo){
	$.ajax({
		type: "POST",
		data: "idArchivo=" + idArchivo,
		url: "procesos/archivador/obtenerlibros.php",
		success:function(respuesta){
			$('#archivoObtenido').html(respuesta);		  	
		}
	});
}