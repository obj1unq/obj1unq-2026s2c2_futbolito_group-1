/** First Wollok example */
import wollok.game.*

object lionel {
	const objetivo = pelota
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
<<<<<<< HEAD
	method patear(){
		self.validarPosicionParaPatear(objetivo)
		objetivo.patear()
	}
	method validarPosicionParaPatear(_objetivo){
		if (not self.position() == _objetivo.position()){
			 self.error("No se puede patear la pelota,no está en la misma posición")
		}
=======

	method buscar() {
		position = objetivo.position()
>>>>>>> origin/main
	}
	
}

object pelota {
	const property image="pelota.png"
<<<<<<< HEAD
	var property position = game.at(5,5)
	method patear(){
		position = game.at((game.width() - 1).min(position.x() + 3), position.y())
	}	
=======
	var property position = game.at(5,5)	

	method inicio() {
		position = game.at(0,5)
	}
>>>>>>> origin/main
}
