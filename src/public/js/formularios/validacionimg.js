function validararch(){ 
    var archivoInput = document.getElementById('archivoInput'); 
    var archivoRuta = archivoInput.value;
    var archPermitidas = /(.png|.jpg|.jpeg)$/i;if (!archPermitidas.exec(archivoRuta)) {
        alert('asegurese de que su archivo sea .PNG o .jpg o .jpeg');archivoInput.value='';return false;    
    } else {
        if (archivoInput.files && archivoInput.files[0]) {
            var visor = new FileReader();   
            visor.onload=function(e){document.getElementById('visorArchivo').innerHTML='<embed src="'+e.target.result+'" width=200px height=200px ">';
        };visor.readAsDataURL(archivoInput.files[0]);}}}