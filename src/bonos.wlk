/*Implementar en Wollok los objetos necesarios para calcular el sueldo de pepe.

El sueldo se pepe se calcula así:
sueldo = neto + bono x presentismo + bono x resultados.
Neto

El neto depende de la categoría, hay varias categorías. Por ejemplo, los gerentes que ganan $10000 
de neto, y cadetes que ganan $15000, aunque puede haber más.

Bono por resultados

Hay tres posibilidades para el bono por resultados:

    10% sobre el neto,
    $80 fijos,
    o nada.

Bono por presentismo

Hay dos bonos por presentismo:

    En uno es $100 pesos si la persona a quien se aplica no faltó nunca, $50 si faltó sólo un día,
    $0 en cualquier otro caso.
    En el otro siempre es $0, independientemente de las faltas.
 */


object bonoPorcentaje {
	method monto(empleado){
		const categoria = empleado.categoria()
		return categoria.neto()*10/100
	}
}

object bonoFijo {
	method monto(empleado) {return 80}
}

object bonoDependeFaltas {
	var salida   
	method monto(empleado){
		const faltas = empleado.getFaltas()
		if (faltas == 0){
			salida = 100
		}else if (faltas == 1){
			salida = 5
		}else{
			salida = 0
		}
		return salida
	}
	
}

object bonoNulo{
	method monto(empleado) {return 0}
}
