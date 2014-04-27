package organizadorFutbol5

abstract class Inscripcion {

	Jugador jugador // por esto es statefull ?

	def inscribirmeSiPuedo(Partido partido) {
		if (partido.inscripciones.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarInscripcion(this)
		} else {
			this.inscribirmeSegunInscripcion(partido)
		}
	}

	def boolean cumpleCondicion(Partido partido) {
		true
	}

	def void inscribirmeSegunInscripcion(Partido partido) {
	}

	def inscribirA(Jugador jugador, Partido partido) {
		this.jugador = jugador
		this.inscribirmeSiPuedo(partido)
	}
	
	def soyEstandar(){false}
	def soySolidaria(){false}
	def soyCondicional(){false}
}
