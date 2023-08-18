$(buscar_datos());

function buscar_datos(consulta){
	$.ajax({
		url: 'procesos/muestraBuscadores/estadisticasIndividuales.php' ,
		type: 'POST' ,
		dataType: 'html',
		data: {consulta: consulta},
	})
	.done(function(respuesta){
		$("#busquedaEstadisticas").html(respuesta);
	})
	.fail(function(){
		console.log("error");
	});
}


$(document).on('keyup','#buscarEstadisticas', function(){
	var valor = $(this).val();
	if (valor != "") {
		buscar_datos(valor);
	}else{
		buscar_datos();
	}
});