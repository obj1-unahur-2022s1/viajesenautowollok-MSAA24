/*
 * Clientes: Bien. El único detalle fue la utilización de una variable
 * innecesaria en el objeto ludmila para recordar el precio por km, que 
 * no es necesario, ya que siempre es fijo e inamovible. 
 */
object ludmila {
	/* Es innecesario utilizar la variable precioPorKm ya que
	 * el enunciado aclara que es fijo e inamovible. También 
	 * te dejo la forma resumida para implementar métodos de
	 * consulta */
	method precioPorKm() = 18
		
}

object anaMaria{
	/* Bien implementados los métodos, solo te dejo una
	 * forma simplificada para cuando tenés que usar un condicional
	 */
	var estaEconomicamenteEstable = true 
	
	method precioPorKm() = if(estaEconomicamenteEstable) 30 else 25
	
	method cambiarEconomia(){
		estaEconomicamenteEstable = !estaEconomicamenteEstable
	}
}

object teresa {
	/* Bien implementado. Te dejo la forma simplificada */
	var precioPorKm = 22
	
	method precioPorKm() = precioPorKm

	method setPrecioKm(nuevoPrecio){
		precioPorKm = nuevoPrecio
	}
}

object melina{
	/* Bien implementado. Solo te dejo la forma simplificada */
	var cadeteDe
	
	method estaTrabajandoPara(clienta){
		cadeteDe = clienta
	}
	method precioPorKm() = cadeteDe.precioPorKm() - 3
	
}