package organizadorFutbol5


class Jugador {
	
	def estaPenalizado(){
		
	}
	
	def inscribirmeA(Partido partido, TipoInscripcion tipoInscripcion){
		new Inscripcion().inscribirA(this, partido, tipoInscripcion)
	}
}