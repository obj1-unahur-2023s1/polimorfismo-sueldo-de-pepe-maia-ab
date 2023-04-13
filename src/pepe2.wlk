import categorias.*
import bonos.*

object pepe {
	var categoriaActual
	var cantidadDeFaltas = 0
	var bonoResultadoActual 
	var bonoPresentismoActual
	
	method getbonoResultado(){return bonoResultadoActual}
	method getbonoPresentismo(){return bonoPresentismoActual}
	method setBonoResultado(bonoNuevo){bonoResultadoActual = bonoNuevo}
	method setBonoPresentismo(bonoNuevo){bonoPresentismoActual = bonoNuevo}
	method categoria(){return categoriaActual}
	method setCategoria(categoriaNueva){categoriaActual = categoriaNueva}
	method setFaltas(cantidad){cantidadDeFaltas = cantidadDeFaltas + cantidad}
	method getFaltas(){return cantidadDeFaltas}
	method sueldoNeto(){
		return categoriaActual.neto() 
	}
	method sueldo(){
		return self.sueldoNeto() + bonoResultadoActual.monto(self) + bonoPresentismoActual.monto(self)
	}
}

object sofia{}
