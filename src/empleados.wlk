object galvan {
	
	var property sueldo = 150000 //getter y setter juntos
	var property totalDinero=0
	var property totalDeuda=0
	/* 
	var sueldo=150000
	method sueldo() = sueldo
	method cobrarSueldo(sueldoNuevo){
		sueldo=sueldoNuevo
	}*/
	
	method cobrarSueldo(){
		totalDinero+=0.max(sueldo-totalDeuda)
		totalDeuda=0.max(totalDeuda-sueldo)
	}
	method gastar(cuanto){
		totalDeuda += 0.max(cuanto - totalDinero)
		totalDinero = 0.max(totalDinero - cuanto)		
	}
}


object baigorria {
	var property totalCobrado=0
	const precioEmpanada=150
	var property cantidadDeEmpanadasVendidas=100
	method sueldo()= precioEmpanada*cantidadDeEmpanadasVendidas
	method venderEmpanadas(cantidad){
		cantidadDeEmpanadasVendidas+=cantidad
	}
	method cobrarSueldo(){
		totalCobrado+=self.sueldo()
	}
}