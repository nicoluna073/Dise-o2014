package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	String horario
	String dia
	@Property List<Inscripcion> inscripciones = new ArrayList<Inscripcion>

	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
	}

	def agregarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.add(inscripcion)
	}

	def eliminarPrimerCondicional() {
		this.inscripciones.remove(this.inscripciones.findFirst[soyCondicional])
	}

	def boolean hayCondicional() {
		this.inscripciones.exists[soyCondicional]
	}
	
	def boolean haySolidaria() {
		this.inscripciones.exists[soySolidaria]
	}
	
	def eliminarPrimerSolidario() {
		this.inscripciones.remove(this.inscripciones.findFirst[soySolidaria])
	}

}
