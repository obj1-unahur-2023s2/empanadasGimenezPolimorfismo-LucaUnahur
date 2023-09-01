import empleados.*
object gimenez{
	var property dinero=3000000
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}
