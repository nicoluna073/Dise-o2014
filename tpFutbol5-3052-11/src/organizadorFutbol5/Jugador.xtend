package organizadorFutbol5


class Jugador {
	
	@Property Inscripcion tipoInscripcion
	
	def estaPenalizado(){
		
	}
	
	def inscribirmeA(Partido partido, Inscripcion tipoInscripcion){
		this.tipoInscripcion = tipoInscripcion 
		tipoInscripcion.inscribirmeSiPuedo(partido,this)
	}
}