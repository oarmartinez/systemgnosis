//------------------TitleLeftBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function titleLeftBig(){
	//console.log("capturado");
	function TitleLeftBig(titleLeftBig){
	this.titleLeftBig=titleLeftBig;
}
	var titleLeftBigCaptura = document.getElementById('texto1').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleLeftBig = new TitleLeftBig(titleLeftBigCaptura);
	insertTitleLeftBig();
}
//------------------titleRigthBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleRightBig(){
	//console.log("capturado");
	function TitleRightBig(titleRightBig){
	this.titleRightBig=titleRightBig;
}
	var titleRightBigCaptura = document.getElementById('texto2').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleRigthBig = new TitleRightBig(titleRightBigCaptura);
	insertTitleRightBig();
}

//------------------titleCenterBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleCenterBig(){
	//console.log("capturado");
	function TitleCenterBig(titleCenterBig){
	this.titleCenterBig=titleCenterBig;
}
	var titleCenterBigCaptura = document.getElementById('texto3').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleCenterBig = new TitleCenterBig(titleCenterBigCaptura);
	insertTitleCenterBig();
}

//------------------titleLeftMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleLeftMedium(){
	//console.log("capturado");
	function TitleLeftMedium(titleLeftMedium){
	this.titleLeftMedium=titleLeftMedium;
}
	var titleLeftMediumCaptura = document.getElementById('texto4').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleLeftMedium = new TitleLeftMedium(titleLeftMediumCaptura);
	insertTitleLeftMedium();
}

//------------------titleRightMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleRightMedium(){
	//console.log("capturado");
	function TitleRightMedium(titleRightMedium){
	this.titleRightMedium=titleRightMedium;
}
	var titleRightMediumCaptura = document.getElementById('texto5').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleRightMedium = new TitleRightMedium(titleRightMediumCaptura);
	insertTitleRightMedium();
}


//------------------titleCenterMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleCenterMedium(){
	//console.log("capturado");
	function TitleCenterMedium(titleCenterMedium){
	this.titleCenterMedium=titleCenterMedium;
}
	var titleCenterMediumCaptura = document.getElementById('texto6').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleCenterMedium = new TitleCenterMedium(titleCenterMediumCaptura);
	insertTitleCenterMedium();
}

//------------------titleLeftSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleLeftSmall(){
	//console.log("capturado");
	function TitleLeftSmall(titleLeftSmall){
	this.titleLeftSmall=titleLeftSmall;
}
	var titleLeftSmallCaptura = document.getElementById('texto7').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleLeftSmall = new TitleLeftSmall(titleLeftSmallCaptura);
	insertTitleLeftSmall();
}

//------------------titleRightSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleRightSmall(){
	//console.log("capturado");
	function TitleRightSmall(titleRightSmall){
	this.titleRightSmall=titleRightSmall;
}
	var titleRightSmallCaptura = document.getElementById('texto8').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleRightSmall = new TitleRightSmall(titleRightSmallCaptura);
	insertTitleRightSmall();
}


//------------------titleCenterSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function titleCenterSmall(){
	//console.log("capturado");
	function TitleCenterSmall(titleCenterSmall){
	this.titleCenterSmall=titleCenterSmall;
}
	var titleCenterSmallCaptura = document.getElementById('texto9').value;
	// objeto se crea con la captura de la informacion.
	nuevoTitleCenterSmall = new TitleCenterSmall(titleCenterSmallCaptura);
	insertTitleCenterSmall();
}


//------------------capturarImg----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function capturarImg(){
	//console.log("capturado");
	function CapturarImg(capturarNombre, capturarImg){
	this.capturarNombre=capturarNombre;
	this.capturarImg=capturarImg;
}
	var capturarNombreCaptura = document.getElementById('texto10').value;
	var capturarImgCaptura = document.getElementById('texto11').value;
	// objeto se crea con la captura de la informacion.
	nuevoCapturarImg = new CapturarImg(capturarNombreCaptura, capturarImgCaptura);
	insertCapturarImg();
}

//------------------capturarTextoImg----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function capturarTextoImg(){
	//console.log("capturado");
	function CapturarTextoImg(capturarNombre1, capturarImg1, capturarTexto1){
	this.capturarNombre1=capturarNombre1;
	this.capturarImg1=capturarImg1;
	this.capturarTexto1=capturarTexto1;
}
	var capturarNombreCaptura1 = document.getElementById('texto12').value;
	var capturarImgCaptura1 = document.getElementById('texto13').value;
	var capturarTextCaptura1 = document.getElementById('texto14').value;
	// objeto se crea con la captura de la informacion.
	nuevoCapturarTextoImg = new CapturarTextoImg(capturarNombreCaptura1, capturarImgCaptura1, capturarTextCaptura1);
	insertCapturarTextoImg();
}

//------------------capturarImgTexto----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function capturarImgTexto(){
	//console.log("capturado");
	function CapturarImgTexto(capturarNombre2, capturarImg2, capturarTexto2){
	this.capturarNombre2=capturarNombre2;
	this.capturarImg2=capturarImg2;
	this.capturarTexto2=capturarTexto2;
}
	var capturarNombreCaptura2 = document.getElementById('texto15').value;
	var capturarImgCaptura2 = document.getElementById('texto16').value;
	var capturarTextCaptura2 = document.getElementById('texto17').value;
	// objeto se crea con la captura de la informacion.
	nuevoCapturarImgTexto = new CapturarImgTexto(capturarNombreCaptura2, capturarImgCaptura2, capturarTextCaptura2);
	insertCapturarImgTexto();
}

//------------------capturarTextCentrado----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarTextCentrado(){
	//console.log("capturado");
	function CapturarTextCentrado(capturarTextCentrado){
	this.capturarTextCentrado=capturarTextCentrado;
}
	var capturarTextCentradoCaptura = document.getElementById('texto18').value;
	// objeto se crea con la captura de la informacion.
	nuevoCapturarTextCentrado = new CapturarTextCentrado(capturarTextCentradoCaptura);
	insertCapturarTextCentrado();
}

//------------------capturarTextJustificado----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function capturarTextJustificado(){
	//console.log("capturado");
	function CapturarTextJustificado(capturarTextJustificado){
	this.capturarTextJustificado=capturarTextJustificado;
}
	var capturarTextJustificadoCaptura = document.getElementById('texto19').value;
	// objeto se crea con la captura de la informacion.
	nuevoCapturarTextJustificado = new CapturarTextJustificado(capturarTextJustificadoCaptura);
	insertCapturarTextJustificado();
}

//------------------capturarCONCEPTO----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function capturarCONCEPTO(){
	//console.log("capturado");
	function CapturarCONCEPTO(capturarCONCEPTO){
	this.capturarCONCEPTO=capturarCONCEPTO;
}
	var capturarCONCEPTOCaptura = document.getElementById('texto20').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarCONCEPTO = new CapturarCONCEPTO(capturarCONCEPTOCaptura);
	insertCapturarCONCEPTO();
}

//------------------capturarCITA----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarCITA(){
	//console.log("capturado");
	function CapturarCITA(capturarCITA){
	this.capturarCITA=capturarCITA;
}
	var capturarCITACaptura = document.getElementById('texto21').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarCITA = new CapturarCITA(capturarCITACaptura);
	insertCapturarCITA();
}

//------------------capturarREFERENCIAS----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarREFERENCIAS(){
	//console.log("capturado");
	function CapturarREFERENCIAS(capturarREFERENCIAS){
	this.capturarREFERENCIAS=capturarREFERENCIAS;
}
	var capturarREFERENCIASCaptura = document.getElementById('texto22').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarREFERENCIAS = new CapturarREFERENCIAS(capturarREFERENCIASCaptura);
	insertCapturarREFERENCIAS();
}

//------------------capturarLISTAIZ----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarLISTAIZ(){
	//console.log("capturado");
	function CapturarLISTAIZ(capturarLISTAIZ){
	this.capturarLISTAIZ=capturarLISTAIZ;
}
	var capturarLISTAIZCaptura = document.getElementById('texto23').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarLISTAIZ = new CapturarLISTAIZ(capturarLISTAIZCaptura);
	insertCapturarLISTAIZ();
}

//------------------capturarLISTADE----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarLISTADE(){
	//console.log("capturado");
	function CapturarLISTADE(capturarLISTADE){
	this.capturarLISTADE=capturarLISTADE;
}
	var capturarLISTADECaptura = document.getElementById('texto24').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarLISTADE = new CapturarLISTADE(capturarLISTADECaptura);
	insertCapturarLISTADE();
}

//------------------capturarPDF----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarPDF(){
	//console.log("capturado");
	function CapturarPDF(capturarPDF){
	this.capturarPDF=capturarPDF;
}
	var capturarPDFCaptura = document.getElementById('texto25').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarPDF = new CapturarPDF(capturarPDFCaptura);
	insertCapturarPDF();
}

//------------------capturarWORD----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarWORD(){
	//console.log("capturado");
	function CapturarWORD(capturarWORD){
	this.capturarWORD=capturarWORD;
}
	var capturarWORDCaptura = document.getElementById('texto26').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarWORD = new CapturarWORD(capturarWORDCaptura);
	insertCapturarWORD();
}

//------------------capturarEXCEL----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarEXCEL(){
	//console.log("capturado");
	function CapturarEXCEL(capturarEXCEL){
	this.capturarEXCEL=capturarEXCEL;
}
	var capturarEXCELCaptura = document.getElementById('texto27').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarEXCEL = new CapturarEXCEL(capturarEXCELCaptura);
	insertCapturarEXCEL();
}

//------------------capturarPP----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function capturarPP(){
	//console.log("capturado");
	function CapturarPP(capturarPP){
	this.capturarPP=capturarPP;
}
	var capturarPPCaptura = document.getElementById('texto28').value;
	// objeto se crea con la captura de la informacion.
	nuevocapturarPP = new CapturarPP(capturarPPCaptura);
	insertCapturarPP();
}



//------------------base de datos----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
var baseDatos = [];
//------------------TitleLeftBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertTitleLeftBig(){
	baseDatos.push(nuevoTitleLeftBig);
	document.getElementById("tabla").innerHTML += `
<h1 class="titleLeftBig">${nuevoTitleLeftBig.titleLeftBig}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="titleLeftBig">${nuevoTitleLeftBig.titleLeftBig}</h1>
	`;

}
//------------------titleRigthBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertTitleRightBig(){
	baseDatos.push(nuevoTitleRigthBig);
	document.getElementById("tabla").innerHTML += `
<h1 class="titleRightBig">${nuevoTitleRigthBig.titleLeftBig}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="titleRightBig">${nuevoTitleRigthBig.titleRightBig}</h1>
	`;

}

//------------------titleCenterBig----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleCenterBig(){
	baseDatos.push(nuevoTitleCenterBig);
	document.getElementById("tabla").innerHTML += `
<h1 class="titleCenterBig">${nuevoTitleCenterBig.titleCenterBig}</h1>
	`;
document.getElementById("ventana").innerHTML += `
<h1 class="titleCenterBig">${nuevoTitleCenterBig.titleCenterBig}</h1>
	`;

}

//------------------titleLeftMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleLeftMedium(){
	baseDatos.push(nuevoTitleLeftMedium);
	document.getElementById("tabla").innerHTML += `
<h2 class="titleLeftMedium">${nuevoTitleLeftMedium.titleLeftMedium}</h2>
	`;
document.getElementById("ventana").innerHTML += `
<h2 class="titleLeftMedium">${nuevoTitleLeftMedium.titleLeftMedium}</h2>
	`;

}

//------------------titleRightMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleRightMedium(){
	baseDatos.push(nuevoTitleRightMedium);
	document.getElementById("tabla").innerHTML += `
<h2 class="titleRightMedium">${nuevoTitleRightMedium.titleRightMedium}</h2>
	`;
document.getElementById("ventana").innerHTML += `
<h2 class="titleRightMedium">${nuevoTitleRightMedium.titleRightMedium}</h2>
	`;

}

//------------------titleCenterMedium----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleCenterMedium(){
	baseDatos.push(nuevoTitleCenterMedium);
	document.getElementById("tabla").innerHTML += `
<h2 class="titleCenterMedium">${nuevoTitleCenterMedium.titleCenterMedium}</h2>
	`;
document.getElementById("ventana").innerHTML += `
<h2 class="titleCenterMedium">${nuevoTitleCenterMedium.titleCenterMedium}</h2>
	`;

}

//------------------titleLeftSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleLeftSmall(){
	baseDatos.push(nuevoTitleLeftSmall);
	document.getElementById("tabla").innerHTML += `
<h3 class="titleLeftSmall">${nuevoTitleLeftSmall.titleLeftSmall}</h3>
	`;
document.getElementById("ventana").innerHTML += `
<h3 class="titleLeftSmall">${nuevoTitleLeftSmall.titleLeftSmall}</h3>
	`;

}

//------------------titleRightSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleRightSmall(){
	baseDatos.push(nuevoTitleRightSmall);
	document.getElementById("tabla").innerHTML += `
<h3 class="titleRightSmall">${nuevoTitleRightSmall.titleRightSmall}</h3>
	`;
document.getElementById("ventana").innerHTML += `
<h3 class="titleRightSmall">${nuevoTitleRightSmall.titleRightSmall}</h3>
	`;

}

//------------------titleCenterSmall----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertTitleCenterSmall(){
	baseDatos.push(nuevoTitleCenterSmall);
	document.getElementById("tabla").innerHTML += `
<h3 class="titleCenterSmall">${nuevoTitleCenterSmall.titleCenterSmall}</h3>
	`;
document.getElementById("ventana").innerHTML += `
<h3 class="titleCenterSmall">${nuevoTitleCenterSmall.titleCenterSmall}</h3>
	`;

}


//------------------capturarImg----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertCapturarImg(){
	baseDatos.push(nuevoCapturarImg);
	document.getElementById("tabla").innerHTML += `
<a href="${nuevoCapturarImg.capturarImg}" target="_blank" download><img  class="capturarImg" alt="${nuevoCapturarImg.capturarNombre}" title="${nuevoCapturarImg.capturarNombre}" src="${nuevoCapturarImg.capturarImg}"></a>
	`;
document.getElementById("ventana").innerHTML += `
<a href="${nuevoCapturarImg.capturarImg}" target="_blank" download><img  class="capturarImg" alt="${nuevoCapturarImg.capturarNombre}" title="${nuevoCapturarImg.capturarNombre}" src="${nuevoCapturarImg.capturarImg}"></a>
	`;

}

//------------------capturarTextoImg----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertCapturarTextoImg(){
	baseDatos.push(nuevoCapturarTextoImg);
	document.getElementById("tabla").innerHTML += `
<div class="capturarTextoImg">	
	<p class="text">${nuevoCapturarTextoImg.capturarTexto1}</p>
	<a href="${nuevoCapturarTextoImg.capturarImg1}" target="_blank" download><img alt="${nuevoCapturarTextoImg.capturarNombre1}" title="${nuevoCapturarTextoImg.capturarNombre1}" src="${nuevoCapturarTextoImg.capturarImg1}"></a>
</div>
	`;
document.getElementById("ventana").innerHTML += `
<div class="capturarTextoImg">	
	<p class="text">${nuevoCapturarTextoImg.capturarTexto1}</p>
	<a href="${nuevoCapturarTextoImg.capturarImg1}" target="_blank" download><img alt="${nuevoCapturarTextoImg.capturarNombre1}" title="${nuevoCapturarTextoImg.capturarNombre1}" src="${nuevoCapturarTextoImg.capturarImg1}"></a>
</div>
	`;

}

//------------------capturarImgTexto----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertCapturarImgTexto(){
	baseDatos.push(nuevoCapturarImgTexto);
	document.getElementById("tabla").innerHTML += `
<div class="capturarTextoImg">	
	<a href="${nuevoCapturarImgTexto.capturarImg2}" target="_blank" download><img alt="${nuevoCapturarImgTexto.capturarNombre2}" title="${nuevoCapturarImgTexto.capturarNombre2}" src="${nuevoCapturarImgTexto.capturarImg2}"></a>
	<p class="text">${nuevoCapturarImgTexto.capturarTexto2}</p>
</div>
	`;
document.getElementById("ventana").innerHTML += `
<div class="capturarTextoImg">	
	<a href="${nuevoCapturarImgTexto.capturarImg2}" target="_blank" download><img alt="${nuevoCapturarImgTexto.capturarNombre2}" title="${nuevoCapturarImgTexto.capturarNombre2}" src="${nuevoCapturarImgTexto.capturarImg2}"></a>
	<p class="text">${nuevoCapturarImgTexto.capturarTexto2}</p>
</div>
	`;
}
//------------------capturarTextCentrado----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertCapturarTextCentrado(){
	baseDatos.push(nuevoCapturarTextCentrado);
	document.getElementById("tabla").innerHTML += `
<p class="capturarTextCentrado">${nuevoCapturarTextCentrado.capturarTextCentrado}</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="capturarTextCentrado">${nuevoCapturarTextCentrado.capturarTextCentrado}</p>
	`;

}

//------------------capturarTextJustificado----------------------------------------------------------//
//------------------------------------------------------------------------------------------//

function insertCapturarTextJustificado(){
	baseDatos.push(nuevoCapturarTextJustificado);
	document.getElementById("tabla").innerHTML += `
<p class="capturarTextJustificado">${nuevoCapturarTextJustificado.capturarTextJustificado}</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="capturarTextJustificado">${nuevoCapturarTextJustificado.capturarTextJustificado}</p>
	`;

}
//------------------capturarCONCEPTO----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarCONCEPTO(){
	baseDatos.push(nuevocapturarCONCEPTO);
	document.getElementById("tabla").innerHTML += `
<p class="insertCapturarConcepto">"${nuevocapturarCONCEPTO.capturarCONCEPTO}"</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="insertCapturarConcepto">"${nuevocapturarCONCEPTO.capturarCONCEPTO}"</p>
	`;

}

//------------------capturarCITA----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarCITA(){
	baseDatos.push(nuevocapturarCITA);
	document.getElementById("tabla").innerHTML += `
<p class="insertCapturarCita">"${nuevocapturarCITA.capturarCITA}"</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="insertCapturarCita">"${nuevocapturarCITA.capturarCITA}"</p>
	`;

}

//------------------capturarREFERENCIAS----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarREFERENCIAS(){
	baseDatos.push(nuevocapturarREFERENCIAS);
	document.getElementById("tabla").innerHTML += `
<p class="insertCapturarReferencias">${nuevocapturarREFERENCIAS.capturarREFERENCIAS}</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="insertCapturarReferencias">${nuevocapturarREFERENCIAS.capturarREFERENCIAS}</p>
	`;

}

//------------------capturarLISTAIZ----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarLISTAIZ(){
	baseDatos.push(nuevocapturarLISTAIZ);
	document.getElementById("tabla").innerHTML += `
<p class="insertCapturarListaiz"> • ${nuevocapturarLISTAIZ.capturarLISTAIZ}</p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="insertCapturarListaiz"> • ${nuevocapturarLISTAIZ.capturarLISTAIZ}</p>
	`;

}

//------------------capturarLISTADE----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarLISTADE(){
	baseDatos.push(nuevocapturarLISTADE);
	document.getElementById("tabla").innerHTML += `
<p class="insertCapturarListade">${nuevocapturarLISTADE.capturarLISTADE} • </p>
	`;
document.getElementById("ventana").innerHTML += `
<p class="insertCapturarListade">${nuevocapturarLISTADE.capturarLISTADE} • </p>
	`;

}

//------------------capturarPDF----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarPDF(){
	baseDatos.push(nuevocapturarPDF);
	document.getElementById("tabla").innerHTML += `
<a href="${nuevocapturarPDF.capturarPDF}" target="_blank" download><img  class="capturarArchivo" src="/img/pdf.png"></a>
	`;
document.getElementById("ventana").innerHTML += `
<a href="${nuevocapturarPDF.capturarPDF}" target="_blank" download><img  class="capturarArchivo" src="/img/pdf.png"></a>
	`;

}

//------------------capturarWORD----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarWORD(){
	baseDatos.push(nuevocapturarWORD);
	document.getElementById("tabla").innerHTML += `
<a href="${nuevocapturarWORD.capturarWORD}" target="_blank" download><img  class="capturarArchivo" src="/img/word.png"></a>
	`;
document.getElementById("ventana").innerHTML += `
<a href="${nuevocapturarWORD.capturarWORD}" target="_blank" download><img  class="capturarArchivo" src="/img/word.png"></a>
	`;

}

//------------------capturarEXCEL----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarEXCEL(){
	baseDatos.push(nuevocapturarEXCEL);
	document.getElementById("tabla").innerHTML += `
<a href="${nuevocapturarEXCEL.capturarEXCEL}" target="_blank" download><img  class="capturarArchivo" src="/img/excel.png"></a>
	`;
document.getElementById("ventana").innerHTML += `
<a href="${nuevocapturarEXCEL.capturarEXCEL}" target="_blank" download><img  class="capturarArchivo" src="/img/excel.png"></a>
	`;

}

//------------------capturarPP----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
function insertCapturarPP(){
	baseDatos.push(nuevocapturarPP);
	document.getElementById("tabla").innerHTML += `
<a href="${nuevocapturarPP.capturarPP}" target="_blank" download><img  class="capturarArchivo" src="/img/pp.png"></a>
	`;
document.getElementById("ventana").innerHTML += `
<a href="${nuevocapturarPP.capturarPP}" target="_blank" download><img  class="capturarArchivo" src="/img/pp.png"></a>
	`;

}



