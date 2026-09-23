/** First Wollok example */
import wollok.game.*

object lionel {
	const objetivo = pelota
	var property position = game.at(3,5)
	const objetivo = pelota
	
	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y())
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y())
	}
	method patear(){
		self.validarPosicionParaPatear(objetivo)
		objetivo.patear()
	}
	method validarPosicionParaPatear(_objetivo){
		if (not self.position() == _objetivo.position()){
			 self.error("No se puede patear la pelota,no está en la misma posición")
		}
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
	method patear(){
		position = game.at((game.width() - 1).min(position.x() + 3), position.y())
	}	
}

