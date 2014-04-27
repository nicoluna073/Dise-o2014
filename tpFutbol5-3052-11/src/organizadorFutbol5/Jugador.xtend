package organizadorFutbol5


class Jugador {
	
	def estaPenalizado(){
		
	}
	
	def inscribirmeA(Partido partido, Inscripcion inscripcion){
		inscripcion.inscribirA(this, partido)
	}
}