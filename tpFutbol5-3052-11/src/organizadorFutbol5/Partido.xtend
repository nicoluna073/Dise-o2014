package organizadorFutbol5

import java.util.List

class Partido {
	String horario
	String dia
	@Property List<Inscripcion> inscripciones
	
	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
	}
	
	def agregarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.add(inscripcion)
	}
	

}
