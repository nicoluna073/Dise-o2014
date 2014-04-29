package organizadorFutbol5

abstract class Inscripcion {

	def inscribirmeSiPuedo(Partido partido, Jugador jugador) {
		if (partido.jugadores.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarJugador(jugador)
		} else {
			this.inscribirmeSegunInscripcion(partido, jugador)
		}
	}

	def boolean cumpleCondicion(Partido partido) {
		true
	}

	def void inscribirmeSegunInscripcion(Partido partido, Jugador jugador) {
	}
	
	def soyEstandar(){false}
	def soySolidaria(){false}
	def soyCondicional(){false}
}
