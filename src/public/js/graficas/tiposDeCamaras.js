let	camarasTipo = document.getElementById('camarasTipo').getContext('2d');
var camaraBasica = document.getElementById('camaraBasica').value;
var camaraAvanzada = document.getElementById('camaraAvanzada').value;	
var camaraReingreso = document.getElementById('camaraReingreso').value;
console.log(camaraBasica);
var	chart = new Chart(camarasTipo,{
	type: 'bar',
	data:{
		labels:["BASICAS","AVANZADAS", "REINGRESOS"],
		datasets: [{
			label: "GRAFICA DE PRIMERAS CAMARAS ",
			backgroundColor: "rgb(0,0,0,.5)",
			data: [camaraBasica,camaraAvanzada,camaraReingreso] 
		}]
	},
	options: {
	    responsive: true,
	    plugins: {
	      legend: {
	        position: 'top',
	      },
	      title: {
	        display: true,
	        text: 'Basicas, Avanzadas, Reingresos'
	      }
	  }
	}
})