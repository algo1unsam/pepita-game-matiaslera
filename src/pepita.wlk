import ciudades.*
import roque.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)


	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			game.say (self, "ya estoy en la ciudad")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if (energia>10){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)}
		else
			game.say(self, "dame de comer primero")
	}	
	
	method puedeVolar(distancia) = self.energiaParaVolar(distancia)>energia
	
	method teEncontro(alguien) {
		roque.encontrarseConAve()
		game.say (alguien,"ESTO NO ESTA PROGRAMADO")
	}
	
	method imagen() {
		if(energia<10){
			return "pepitaCanchera.png"
		}
		else if (energia>100){
			return "pepita-gorda-raw.png"	
		}
		else{
		 return "pepita.png"
			}
	}
}
