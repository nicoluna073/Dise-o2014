package organizadorFutbol5

class Inscripcion {
	
	Jugador jugador
	
	def inscribirmeSiPuedo(Partido partido){
		if(partido.inscripciones.length < 10){
			partido.agregarInscripcion(this)
		}
	}
	
	def inscribirA(Jugador jugador, Partido partido) {
		this.jugador = jugador
		this.inscribirmeSiPuedo(partido)
	}
	
}
