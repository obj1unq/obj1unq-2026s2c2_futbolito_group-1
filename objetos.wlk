/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	const objetivo = pelota
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method paseAtras() {
	  self.validarMismaPosicion()
	  objetivo.nuevaPosicion()
	}

	method validarMismaPosicion() {
	  if (not (position == objetivo.position())){
		self.error("No esta en la misma posicion")
	  }
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method nuevaPosicion() {
	  position = game.at( (0).max(position.x() - 2) ,position.y()) 
	}
}


/*
Taquito: Hacer Lionel de un pase atrás al apretar la tecla t:
 La pelota se mueve 2 posiciones a la izquierda. (o lo máximo que se pueda mover) 
 Tip: usar el método max de los números entre el x actual de la pelota - 2 y 0. 
 Validar que la pelota se encuentre en la misma posición que Lionel.

*/