package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	@Property String horario // TODO: Pasarlo a date?
	@Property String dia // TODO: Pasarlo a date?
	@Property List<Inscripcion> inscripciones = new ArrayList<Inscripcion>

	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
	}

	def agregarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.add(inscripcion)
	}

	def eliminarPrimerCondicional() {
		this.inscripciones.remove(this.inscripciones.findFirst[tipoInscripcion.soyCondicional])
	}

	def boolean hayCondicional() {
		this.inscripciones.exists[tipoInscripcion.soyCondicional]
	}
	
	def boolean haySolidaria() {
		this.inscripciones.exists[tipoInscripcion.soySolidaria]
	}
	
	def eliminarPrimerSolidario() {
		this.inscripciones.remove(this.inscripciones.findFirst[tipoInscripcion.soySolidaria])
	}

}
