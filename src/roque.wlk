import pepita.*

object roque {
	var comidaActual  = null
	
	var property posicion = game.at(4,4)
	method imagen() = "jugador.png"
	
	method levantar(comida){	
		if(comidaActual != null)
		comidaActual=comida
		game.removeVisual(comida)
		self.darComidaPepita()
	} 
	method queComidaTiene()=comidaActual
	
	method darComidaPepita(){
		pepita.come(comidaActual)
		comidaActual = null
	}
	
	}

