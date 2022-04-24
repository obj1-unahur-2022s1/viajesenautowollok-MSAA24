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
		self.cambiarPrimerRemiserarPor(segundaRemisera)
		self.cambiarSegundoRemiseraPor(primeraRemisera)
		
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if (segundaRemisera.precioViaje(cliente, kms) < primeraRemisera.precioViaje(cliente, kms) and self.diferenciaPrecio(cliente, kms) > 30){
			return segundaRemisera
		}
		else{
			return primeraRemisera
		}
	}
	method diferenciaPrecio(cliente,kms){
		return primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms)
	}
}



