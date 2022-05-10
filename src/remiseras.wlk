/*
 * Remiseras: Bien(-). En el objeto mariela se podía implementar el método max() para
 * resolver lo pedido por el mínimo valor. En el objeto juana había error en la 
 * implementación del condicional. Y te dejé la forma resumida para los getter.
 */

import clientes.*

object roxana{
	/* Bien implementado. Solo te dejo la forma resumida */
	method precioViaje(cliente, cantKm) = cliente.precioPorKm() * cantKm
}

object gabriela{
	/* Bien, aunque podrías haber simplificado la expresión. Te dejo esa
	 * sugerencia + la forma resumida de escribir los getter sin return.
	 */
	method precioViaje(cliente,kms) = cliente.precioPorKm() * kms * 1.2
}	

object mariela{
	/* Bien(-). Si bien tu implementación resuelve lo pedido, esto se podía 
	 * implementar utilizando el mensaje max de la forma que te dejo indicada, 
	 * además va también la manera simplificada para los getter.
	 */
	method precioViaje(cliente, kms) = 50.max(cliente.precioPorKm() * kms)
}

object juana{
	/* Regular. Hay un error en la implementación del condicional, ya que cada rama de
	 * ejecución debe retornar un valor, y te faltó un else. De cualquier forma
	 * hay un problema de lógica en la solución. Te dejo la forma correcta de
	 * implementar y también en la forma resumida para los condicionales
	 */
	method precioViaje(cliente , kms) = if(kms <= 8)  100 else 200
}

object lucia{
	/* Bien. Solo te dejo la sugerencia de la forma resumida */
	var remisera
	
	method reemplazarRemisera(remiseraAReemplazar){
		remisera = remiseraAReemplazar
	}
	method precioViaje(cliente, cantKm) = remisera.precioViaje(cliente, cantKm) 
}












