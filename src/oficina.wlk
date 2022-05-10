/*
 * Oficina: Bien(-) El método intercambiarRemiseras() no estaba bien implementado, 
 * ya que provocaba que se pierda el valor de la primeraRemisera. Y el método para
 * determinar la remiseraElegidaParaElViaje tenía una validación innecesaria.
 */

import remiseras.*

object oficina{
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	method intercambiarRemiseras(){
		/* No es correcta esta implementación, ya que luego de ejecutar el primer
		 * método, perdías el valor anterior de la primeraRemisera, y lo que estabas
		 * seteando en self.cambiarSegundoRemiseraPor(primeraRemisera) era lo mismo
		 * que tenía segundaRemisera. Te dejo la forma correcta en que se debía 
		 * implementar este método.  
		 */
		self.asignarRemiseras(segundaRemisera, primeraRemisera)
		
	}
	method remiseraElegidaParaViaje(cliente, kms) =
		/* Bien(-). Era innecesario validar si el precio de la segundaRemisera era
		 * menor que el de la primera, ya que con el método que calcula la diferencia
		 * (bien hecho ahí) ya tenes la diferencia para evaluar si es mayor que 30.
		 * Te dejo esa corrección y las formas resumidas 
		 */
		if (self.diferenciaPrecio(cliente,kms) > 30) segundaRemisera else primeraRemisera
		
	method diferenciaPrecio(cliente,kms) = 
		primeraRemisera.precioViaje(cliente, kms) 
		- segundaRemisera.precioViaje(cliente, kms)
	
}



