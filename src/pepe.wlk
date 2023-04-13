import categorias.*

object pepe {
	var categoriaActual
	var cantidadDeFaltas = 0
	var bonoResultado  
	var bonoPresentismo 
	
	method bonoResultado(){return bonoResultado}
	method bonoPresentismo(){return bonoPresentismo}
	method asignarBonoResultado(bonoNuevo){bonoResultado = bonoNuevo}
	method asignarBonoPresentismo(bonoNuevo){bonoPresentismo = bonoNuevo}
	method categoria(){return categoriaActual}
	method asignarCategoria(categoriaNueva){categoriaActual = categoriaNueva}
	method asignarFaltas(cantidad){cantidadDeFaltas += cantidad}
	method sueldo(){
		return categoriaActual.neto() + bonoResultado + bonoPresentismo 
	}
}

object sofia{}
