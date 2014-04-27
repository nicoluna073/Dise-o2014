package organizadorFutbol5

abstract class Inscripcion {
	
	Jugador jugador // por esto es statefull ?
	
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
