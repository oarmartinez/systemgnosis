$(function() {

  // Obtenemos URL paginacion
  $('.data-pagination').on('click', '.pagination li a', function(evt) {
    evt.preventDefault();
    url = $(this).attr('data-target');
    //alert(url);
    ajaxLoad(url);
  });

    // Filtros (Puedes crear los filtros que deseas, simplmente recuerda añadirlo a tu objeto 'var query_params')
   //
  // Amount
  $('#amount_show').change(function(evt) { 
    evt.preventDefault();      
    ajaxLoad('vistasCoordinaciones/tablaPersonalJuventudes.php');
  });

  //cargo
  $('#cargo_show').change(function(evt) { 
    evt.preventDefault(); 
    var cargo = $(this).val();        
    console.log(cargo, 'change');   
    ajaxLoad('vistasCoordinaciones/tablaPersonalJuventudes.php');
  });


  // Buscador
  $( "input[type='text']#buscador_show" ).change(function(evt) {
    evt.preventDefault(); 
    var txt = $(this).val();  
    console.log(txt);
    ajaxLoad('vistasCoordinaciones/tablaPersonalJuventudes.php');
  });

  // Cargar contenido dinamico
  function ajaxLoad(url) {            
   
    // Creamos objeto con nuestros filtros (si creas mas filtros recuerda añadirlo a tu objeto)
    var query_params = {
        amount_show: $('#amount_show').val(),        
        cargo: $('#cargo_show').val(),
        buscador: $('#buscador_show').val()                
        // etc
    };         
    
    // AJAX
    var request = $.ajax({
        method: "GET",
        url: url,
        data: jQuery.param(query_params),
        dataType: "html"            
    });

    // Success
    request.done(function(data) {  
        // Elimino header, ya que se me repite dos veces.
        $('header').remove()
                        
        //$('.data-pagination').fadeOut("fast", function() { $(this).html(data).fadeIn("fast") })
        //
        // Cargar nuevo contenido
        $('.data-pagination').html('');
        $('.data-pagination').html(data).fadeIn('fast');
        
     });

     // Error
     request.fail(function(jqXHR, textStatus) {
       alert("Ocurrió un error inesperado (paginador): " + textStatus);
     });    
    }
  });