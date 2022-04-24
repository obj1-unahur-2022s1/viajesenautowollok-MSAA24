/*
 * definir remiseras y clientes.
 */

import clientes.*

object roxana{
	
	method precioViaje(cliente, cantKm){
		return cliente.precioPorKm() * cantKm
	}
}

object gabriela{
	method precioViaje(cliente, cantKm){
		return (cliente.precioPorKm() * cantKm) + ((cliente.precioPorKm() * cantKm)*0.2) 
	}
}

object mariela{
	method precioViaje(cliente, cantKm){
		if ((cliente.precioPorKm()* cantKm) < 50){
			return 50
		}
		else{
			return (cliente.precioPorKm() * cantKm)
		}
	}
}

object juana{
	method precioViaje(cliente, cantKm){
		if (cantKm <= 8){
			return 100 
		}
		else if (cantKm > 8){
			return 200
		}
	}
}

object lucia{
	var remisera
	
	method reemplazarRemisera(remiseraAReemplazar){
		remisera = remiseraAReemplazar
	}
	method precioViaje(cliente, cantKm){
		return remisera.precioViaje(cliente, cantKm) 
	}
}












