import pepita.*
import wollok.game.*

object roque {

	var comidaActual = null
	var property posicion = game.at(4, 4)

	method imagen() = "jugador.png"

	method queComidaTiene() = comidaActual

	method levantar(comida) {
		if (comidaActual == null) comidaActual = comida
		game.removeVisual(comida)
		// TODO se la tiene que guardar, aparece si reemplaza una por otra 
		self.aparecerComida(comida)
	}

	method aparecerComida(comida) {
		game.addVisualIn(comida, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
	}

	method encontrarseConAve() {
		if (comidaActual != null) {
			pepita.come(comidaActual)
			comidaActual == null
			// TODO una vez que pepita come también debería aparecer la comida que comió
		}
	}

}

