package organizadorFutbol5

class Solidaria implements Inscripcion {

	override def void inscribirmeSegunInscripcion(Partido partido, Jugador jugador) {
		if (partido.hayCondicional()) {
			partido.eliminarPrimerCondicional()
			partido.agregarJugador(jugador)
		}
	}

	override def soySolidaria(){true}
	override toString() {
		"soy Solidaria"
	}
	
	override def inscribirmeSiPuedo(Partido partido, Jugador jugador) {
		if (partido.jugadores.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarJugador(jugador)
		} else {
			this.inscribirmeSegunInscripcion(partido, jugador)
		}
	}

	override def boolean cumpleCondicion(Partido partido) {
		true
	}

	override def soyEstandar(){false}
	override def soyCondicional(){false}

}
