var user = '<?=$usuario?>';
console.log(user);
let formulario = {

	formularioCursoInstructoresCaptura:
	`
	<form id="fmCurso" method="POST" enctype="multipart/form-data" onsubmit="return agregarCursoNuevo()" autocomplete="off">
	    <h2>Curso de Instructores</h2>	    
	    <input type="text" name="estado" placeholder="Estado" autocomplete="off">
	    <input type="text" name="lumisial" placeholder="Lumisial" autocomplete="off">
        <input type="hidden" name="rama" value="ENSEÑANZA">
	    <input type="text" name="cedula" placeholder="Cedula" autocomplete="off">
	    <input type="text" name="nombre" placeholder="Nombre" autocomplete="off">
	    <input type="text" name="apellido" placeholder="Apellido" autocomplete="off">
	    <input type="email" name="email" placeholder="Email" autocomplete="off">
	    <input type="phone" name="telefono" placeholder="Telefono" autocomplete="off">
	    <input type="file" name="foto" >
	    <input type="submit" value="REGISTRARME">
	</form>

	`,
	formularioCursoMisionerosCaptura:
	`
	<form id="fmCurso" method="POST" enctype="multipart/form-data" onsubmit="return agregarCursoNuevo()" autocomplete="off">
	    <h2>Curso de Misioneros</h2>
	    <input type="text" name="estado" placeholder="Estado" autocomplete="off">
	    <input type="text" name="lumisial" placeholder="Lumisial" autocomplete="off">
        <input type="hidden" name="rama" value="ENSEÑANZA">
	    <input type="text" name="cedula" placeholder="Cedula" autocomplete="off">
	    <input type="text" name="nombre" placeholder="Nombre" autocomplete="off">
	    <input type="text" name="apellido" placeholder="Apellido" autocomplete="off">
	    <input type="email" name="email" placeholder="Email" autocomplete="off">
	    <input type="phone" name="telefono" placeholder="Telefono" autocomplete="off">
	    <input type="file" name="foto" >
	    <input type="submit" value="REGISTRARME">
	</form>

	`,
	formularioCursoTutoresCaptura:
	`
	<form id="fmCurso" method="POST" enctype="multipart/form-data" onsubmit="return agregarCursoNuevo()" autocomplete="off">
	    <h2>Curso de Tutores</h2>
	    <input type="text" name="estado" placeholder="Estado" autocomplete="off">
	    <input type="text" name="lumisial" placeholder="Lumisial" autocomplete="off">
        <input type="hidden" name="rama" value="TECNOTRONICA">
	    <input type="text" name="cedula" placeholder="Cedula" autocomplete="off">
	    <input type="text" name="nombre" placeholder="Nombre" autocomplete="off">
	    <input type="text" name="apellido" placeholder="Apellido" autocomplete="off">
	    <input type="email" name="email" placeholder="Email" autocomplete="off">
	    <input type="phone" name="telefono" placeholder="Telefono" autocomplete="off">
	    <input type="file" name="foto" >
	    <input type="submit" value="REGISTRARME">
	</form>

	`,
	formularioCursoJuventudesCaptura:
	`
	<form id="fmCurso" method="POST" enctype="multipart/form-data" onsubmit="return agregarCursoNuevo()" autocomplete="off">
	    <h2>Curso de Juventudes</h2>
	    <input type="text" name="estado" placeholder="Estado" autocomplete="off">
	    <input type="text" name="lumisial" placeholder="Lumisial" autocomplete="off">
        <input type="hidden" name="rama" value="JUVENTUDES">
	    <input type="text" name="cedula" placeholder="Cedula" autocomplete="off">
	    <input type="text" name="nombre" placeholder="Nombre" autocomplete="off">
	    <input type="text" name="apellido" placeholder="Apellido" autocomplete="off">
	    <input type="email" name="email" placeholder="Email" autocomplete="off">
	    <input type="phone" name="telefono" placeholder="Telefono" autocomplete="off">
	    <input type="file" name="foto" >
	    <input type="submit" value="REGISTRARME">
	</form>

	`,
	formularioCursoAgeacacCaptura:
	`
	<form id="fmCurso" method="POST" enctype="multipart/form-data" onsubmit="return agregarCursoNuevo()" autocomplete="off">
	    <h2>Curso de Ageacac</h2>
	    <input type="text" name="estado" placeholder="Estado" autocomplete="off">
	    <input type="text" name="lumisial" placeholder="Lumisial" autocomplete="off">
        <input type="hidden" name="rama" value="AGEACAC">
	    <input type="text" name="cedula" placeholder="Cedula" autocomplete="off">
	    <input type="text" name="nombre" placeholder="Nombre" autocomplete="off">
	    <input type="text" name="apellido" placeholder="Apellido" autocomplete="off">
	    <input type="email" name="email" placeholder="Email" autocomplete="off">
	    <input type="phone" name="telefono" placeholder="Telefono" autocomplete="off">
	    <input type="file" name="foto" >
	    <input type="submit" value="REGISTRARME">
	</form>

	`
};


document.getElementById("cursoInstructores").onclick = function(){formularioCursoI()};
document.getElementById("cursoMisioneros").onclick = function(){formularioCursoM()};
document.getElementById("cursoTutores").onclick = function(){formularioCursoT()};
document.getElementById("cursoJuventudes").onclick = function(){formularioCursoJ()};
document.getElementById("cursoAgeacac").onclick = function(){formularioCursoA()};


//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function formularioCursoI(){
	//console.log("capturado");
	function FormularioCurso(formularioCursoI){
	this.formularioCursoI=formularioCursoI;
	}	
	
	var formularioCursoCaptura = formulario['formularioCursoInstructoresCaptura'];
	// objeto se crea con la captura de la informacion.
	nuevoFormulario = new FormularioCurso(formularioCursoCaptura);
	insertFormularioCursoI();
	
}

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function formularioCursoM(){
	//console.log("capturado");
	function FormularioCurso(formularioCursoM){
	this.formularioCursoM=formularioCursoM;
	}	
	
	var formularioCursoCaptura = formulario['formularioCursoMisionerosCaptura'];
	// objeto se crea con la captura de la informacion.
	nuevoFormulario = new FormularioCurso(formularioCursoCaptura);
	insertFormularioCursoM();
	
}

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//


//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function formularioCursoT(){
	//console.log("capturado");
	function FormularioCurso(formularioCursoT){
	this.formularioCursoT=formularioCursoT;
	}	
	
	var formularioCursoCaptura = formulario['formularioCursoTutoresCaptura'];
	// objeto se crea con la captura de la informacion.
	nuevoFormulario = new FormularioCurso(formularioCursoCaptura);
	insertFormularioCursoT();
	
}

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function formularioCursoJ(){
	//console.log("capturado");
	function FormularioCurso(formularioCursoJ){
	this.formularioCursoJ=formularioCursoJ;
	}	
	
	var formularioCursoCaptura = formulario['formularioCursoJuventudesCaptura'];
	// objeto se crea con la captura de la informacion.
	nuevoFormulario = new FormularioCurso(formularioCursoCaptura);
	insertFormularioCursoJ();
	
}

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function formularioCursoA(){
	//console.log("capturado");
	function FormularioCurso(formularioCursoA){
	this.formularioCursoA=formularioCursoA;
	}	
	
	var formularioCursoCaptura = formulario['formularioCursoAgeacacCaptura'];
	// objeto se crea con la captura de la informacion.
	nuevoFormulario = new FormularioCurso(formularioCursoCaptura);
	insertFormularioCursoA();
	
}

//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//


//------------------base de datos----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
var baseDatos = [];
//------------------base de datos----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertFormularioCursoI(){
	baseDatos.push(nuevoFormulario);
	document.getElementById("tabla").innerHTML += `
<h1 class="formularioCursoI">${nuevoFormulario.formularioCursoI}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="formularioCursoI">${nuevoFormulario.formularioCursoI}</h1>
	`;

}
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertFormularioCursoM(){
	baseDatos.push(nuevoFormulario);
	document.getElementById("tabla").innerHTML += `
<h1 class="formularioCursoM">${nuevoFormulario.formularioCursoM}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="formularioCursoM">${nuevoFormulario.formularioCursoM}</h1>
	`;

}
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertFormularioCursoT(){
	baseDatos.push(nuevoFormulario);
	document.getElementById("tabla").innerHTML += `
<h1 class="formularioCursoT">${nuevoFormulario.formularioCursoT}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="formularioCursoT">${nuevoFormulario.formularioCursoT}</h1>
	`;

}
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertFormularioCursoJ(){
	baseDatos.push(nuevoFormulario);
	document.getElementById("tabla").innerHTML += `
<h1 class="formularioCursoJ">${nuevoFormulario.formularioCursoJ}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="formularioCursoJ">${nuevoFormulario.formularioCursoJ}</h1>
	`;

}
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertFormularioCursoA(){
	baseDatos.push(nuevoFormulario);
	document.getElementById("tabla").innerHTML += `
<h1 class="formularioCursoA">${nuevoFormulario.formularioCursoA}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="formularioCursoA">${nuevoFormulario.formularioCursoA}</h1>
	`;

}
//------------------Formulario Instructores----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

