package organizadorFutbol5

class Condicional implements Inscripcion {

	(Partido)=>boolean condicion

	new() {
	}

	new((Partido)=>boolean condicion) {
		this.condicion = condicion
	}

	override def soyCondicional() {
		true
	}

	override def boolean cumpleCondicion(Partido partido) {
		this.condicion.apply(partido)
	}

	override toString() {
		"soy Condicional"
	}
	
	override def inscribirmeSiPuedo(Partido partido, Jugador jugador) {
		if (partido.jugadores.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarJugador(jugador)
		} else {
			this.inscribirmeSegunInscripcion(partido, jugador)
		}
	}
	
	override def soyEstandar(){false}
	override def soySolidaria(){false}
	
	override inscribirmeSegunInscripcion(Partido partido, Jugador jugador) {
		
	}
	
}
