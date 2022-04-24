
object ludmila {
	var precioPorKm = 18
	
	method precioPorKm(){
		return precioPorKm
	}
}

object anaMaria{
	
	var estaEconomicamenteEstable = true 
	
	method precioPorKm(){
		if (estaEconomicamenteEstable){
			return 30
		}
		else{
			return 25
		}
	}
	
	method cambiarEconomia(){
		estaEconomicamenteEstable = !estaEconomicamenteEstable
	}
}

object teresa {
	var precioPorKm = 22
	
	method precioPorKm(){
		return precioPorKm
	}
	method setPrecioKm(nuevoPrecio){
		precioPorKm = nuevoPrecio
	}
}

object melina{
	var cadeteDe
	
	method estaTrabajandoPara(clienta){
		cadeteDe = clienta
	}
	method precioPorKm(){
		return cadeteDe.precioPorKm() - 3
	}
	
}