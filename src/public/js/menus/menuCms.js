		function tituloGrande(){
			//console.log("capturado");
			function TituloGrande(tituloGrande){
				this.tituloGrande=tituloGrande;
			}
			var tituloGrandeCaptura = document.getElementById('texto1').value;
			// objeto se crea con la captura de la informacion.
			nuevoTituloG = new TituloGrande(tituloGrandeCaptura);
			insertTituloGrande();
		}

		function tituloMediano(){
			//console.log("capturado");
			function TituloMediano(tituloMediano){
				this.tituloMediano=tituloMediano;
			}
			var tituloMedianoCaptura = document.getElementById('texto2').value;
			// objeto se crea con la captura de la informacion.
			nuevoTituloM = new TituloMediano(tituloMedianoCaptura);
			insertTituloMediano();
		}

		function tituloPeque(){
			//console.log("capturado");
			function TituloPeque(tituloPeque){
				this.tituloPeque=tituloPeque;
			}
			var tituloPequeCaptura = document.getElementById('texto3').value;
			// objeto se crea con la captura de la informacion.
			nuevoTituloP = new TituloPeque(tituloPequeCaptura);
			insertTituloPeque();
		}
		function capturarImg(){
			//console.log("capturado");
			function Img(img){
				this.img=img;
			}
			var ImgCapturar = document.getElementById('texto4').value;
			// objeto se crea con la captura de la informacion.
			nuevoImg = new Img(ImgCapturar);
			insertImg();
		}

		function capturarPDF(){
			//console.log("capturado");
			function Pdf(pdf){
				this.pdf=pdf;
			}
			var PdfCapturar = document.getElementById('texto5').value;
			// objeto se crea con la captura de la informacion.
			nuevoPdf = new Pdf(PdfCapturar);
			insertPdf();
		}
		function capturarWORD(){
			//console.log("capturado");
			function Word(word){
				this.word=word;
			}
			var WordCapturar = document.getElementById('texto6').value;
			// objeto se crea con la captura de la informacion.
			nuevoWord = new Word(WordCapturar);
			insertWord();
		}
		function capturarEXCEL(){
			//console.log("capturado");
			function Exel(exel){
				this.exel=exel;
			}
			var ExelCapturar = document.getElementById('texto7').value;
			// objeto se crea con la captura de la informacion.
			nuevoExel = new Exel(ExelCapturar);
			insertExel();
		}
		function capturarPP(){
			//console.log("capturado");
			function Pp(pp){
				this.pp=pp;
			}
			var PpCapturar = document.getElementById('texto8').value;
			// objeto se crea con la captura de la informacion.
			nuevoPp = new Pp(PpCapturar);
			insertPp();
		}
		function capturarTEXTO(){
			//console.log("capturado");
			function Texto(texto){
				this.texto=texto;
			}
			var TextoCapturar = document.getElementById('texto9').value;
			// objeto se crea con la captura de la informacion.
			nuevoTexto = new Texto(TextoCapturar);
			insertTexto();
		}
		function capturarCONCEPTO(){
			//console.log("capturado");
			function Concepto(concepto){
				this.concepto=concepto;
			}
			var ConceptoCapturar = document.getElementById('texto10').value;
			// objeto se crea con la captura de la informacion.
			nuevoConcepto = new Concepto(ConceptoCapturar);
			insertConcepto();
		}
		function capturarLISTA(){
			//console.log("capturado");
			function Lista(lista){
				this.lista=lista;
			}
			var ListaCapturar = document.getElementById('texto11').value;
			// objeto se crea con la captura de la informacion.
			nuevoLista = new Lista(ListaCapturar);
			insertLista();
		}

//------------------base de datos----------------------------------------------------------//
//------------------------------------------------------------------------------------------//
		var baseDatos = [];
		function insertTituloGrande(){
				baseDatos.push(nuevoTituloG);
				document.getElementById("tabla").innerHTML += `
<h1>${nuevoTituloG.tituloGrande}</h1>
				`;
				document.getElementById("ventana").innerHTML += `
<h1>${nuevoTituloG.tituloGrande}</h1>
				`;

			}
		function insertTituloMediano(){
				baseDatos.push(nuevoTituloM);
				document.getElementById("tabla").innerHTML += `
<h2>${nuevoTituloM.tituloMediano}</h2>
				`;
				document.getElementById("ventana").innerHTML += `
<h2>${nuevoTituloM.tituloMediano}</h2>
				`;

			}
		function insertTituloPeque(){
				baseDatos.push(nuevoTituloP);
				document.getElementById("tabla").innerHTML += `
<h3>${nuevoTituloP.tituloPeque}</h3>
				`;
				document.getElementById("ventana").innerHTML += `
<h3>${nuevoTituloP.tituloPeque}</h3>
				`;

			}

		function insertImg(){
				baseDatos.push(nuevoImg);
				document.getElementById("tabla").innerHTML += `
<a href="${nuevoImg.img}" class="descarga" download><img src="/${nuevoImg.img}"><p>IMAGEN</p></a>
				`;
				document.getElementById("ventana").innerHTML += `
<a href="${nuevoImg.img}" class="descarga" download><img src="/${nuevoImg.img}"><p>IMAGEN</p></a>
				`;

			}
		function insertPdf(){
				baseDatos.push(nuevoPdf);
				document.getElementById("tabla").innerHTML += `
<a href="${nuevoPdf.pdf}" class="descarga" download><img src="/img/pdf.png"><p>IMAGEN</p></a>
				`;
				document.getElementById("ventana").innerHTML += `
<a href="${nuevoPdf.pdf}" class="descarga" download><img src="/img/pdf.png"><p>IMAGEN</p></a>
				`;

			}

			function insertWord(){
				baseDatos.push(nuevoWord);
				document.getElementById("tabla").innerHTML += `
<a href="${nuevoWord.word}" class="descarga" download><img src="/img/word.png"><p>IMAGEN</p></a>
				`;
				document.getElementById("ventana").innerHTML += `
<a href="${nuevoWord.word}" class="descarga" download><img src="/img/word.png"><p>IMAGEN</p></a>
				`;

			}
			function insertExel(){
				baseDatos.push(nuevoExel);
				document.getElementById("tabla").innerHTML += `
<a href="${nuevoExel.exel}" class="descarga" download><img src="/img/exel.png"><p>IMAGEN</p></a>
				`;
				document.getElementById("ventana").innerHTML += `
<a href="${nuevoExel.exel}" class="descarga" download><img src="/img/exel.png"><p>IMAGEN</p></a>
				`;

			}

			function insertPp(){
				baseDatos.push(nuevoPp);
				document.getElementById("tabla").innerHTML += `
<a href="${nuevoPp.pp}" class="descarga" download><img src="/img/pp.png"><p>IMAGEN</p></a>
				`;
				document.getElementById("ventana").innerHTML += `
<a href="${nuevoPp.pp}" class="descarga" download><img src="/img/pp.png"><p>IMAGEN</p></a>
				`;

			}

			function insertTexto(){
				baseDatos.push(nuevoTexto);
				document.getElementById("tabla").innerHTML += `
<p class="parrafito">${nuevoTexto.texto}</p>
				`;
				document.getElementById("ventana").innerHTML += `
<p class="parrafito">${nuevoTexto.texto}</p>
				`;

			}

			function insertConcepto(){
				baseDatos.push(nuevoConcepto);
				document.getElementById("tabla").innerHTML += `
<span class="conceptual">"${nuevoConcepto.concepto}"</span>	
				`;
				document.getElementById("ventana").innerHTML += `
<span class="conceptual">"${nuevoConcepto.concepto}"</span>	
				`;

			}

			function insertLista(){
				baseDatos.push(nuevoLista);
				document.getElementById("tabla").innerHTML += `
<span class="descriptivo"> • ${nuevoLista.lista}</span>	
				`;
				document.getElementById("ventana").innerHTML += `
<span class="descriptivo"> • ${nuevoLista.lista}</span>	
				`;

			}