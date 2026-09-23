/** First Wollok example */
import wollok.game.*

object lionel {
	var property position = game.at(3, 5)
	var estado = "titular"
	var objetivo = pelota
	
	var property position = game.at(3,5)
	const objetivo = pelota
	
	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y())
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y())
	}

	method buscar() {
		position = objetivo.position()
	}
	
	method cambiarCamiseta() {
		self.validarCambiarCamiseta()
		if (estado == "titular") {
			estado = "suplente"
		} else {
			estado = "titular"
		}
	}
	
	method validarCambiarCamiseta() {
		if (not (position == objetivo.position())) self.error(
				"lionel no esta en el lugar correcto"
			)
	}
}

object pelota {

	const property image = "pelota.png"
	var property position = game.at(5, 5)
}

	const property image="pelota.png"
	var property position = game.at(5,5)	

	method inicio() {
		position = game.at(0,5)
	}
}

