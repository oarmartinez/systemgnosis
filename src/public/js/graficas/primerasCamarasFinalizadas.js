let	graficaFinalizados = document.getElementById('finalizados').getContext('2d');
var exitosa = document.getElementById('fe').value;
var sinExito = document.getElementById('fse').value;
console.log(exitosa);
var	chart = new Chart(graficaFinalizados,{
	type: 'bar',
	data:{
		labels:["EXITOSAS", "NO_EXITOSAS"],
		datasets: [{
			label: "GRAFICA DE PRIMERAS CAMARAS FINALIZADAS",
			backgroundColor: "rgb(0,0,0,.5)",
			data: [exitosa,sinExito] 
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
	        text: 'Exitosas, Sin exito'
	      }
	  }
	}
})