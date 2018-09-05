import pepita.*
import wollok.game.*

object roque {
	var comidaActual  = null
	
	var property posicion = game.at(4,4)
	method imagen() = "jugador.png"
	
	method queComidaTiene()=comidaActual
	
	method levantar(comida){	
		if(comidaActual == null)
		comidaActual=comida
		game.removeVisual(comida)
		self.aparecerComida(comida)
	} 

	method aparecerComida(comida){
		game.addVisualIn(comida, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
	}
	

	
	method encontrarseConAve()
	{
		if (comidaActual!=null){
			pepita.come(comidaActual)
			comidaActual==null}
		
	}
	
	}

