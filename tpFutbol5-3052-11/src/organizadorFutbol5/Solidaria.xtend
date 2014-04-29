package organizadorFutbol5

class Solidaria extends Inscripcion {

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

}
