package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	@Property String dia
	@Property String horario
	@Property String lugar
	@Property Integer cantidadMaximaJugadores = 10 //aca va una variable de clase, no se como se declara
	@Property List<Inscripcion> inscripciones = new ArrayList<Inscripcion>
		
	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
	}
	
	def agregarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.add(inscripcion)
	}
	
	def inscribirA(Jugador jugador, TipoInscripcion tipo){
		if(this.inscripcionIncompleta){
			this.agregarInscripcion(new Inscripcion(jugador, tipo))
		}
	}
	
	def inscripcionIncompleta(){
		(this.inscripcionesDeTipo("Estandar")).size < this.cantidadMaximaJugadores
	}

	def armarListaCandidatos(){
		((this.inscripcionesDeTipo("Estandar")) +
		(this.inscripcionesDeTipo("Solidaria")) +
		(this.inscripcionesDeTipo("Condicional"))).take(10)
	}
	
	def inscripcionesDeTipo(String tipo){
		this.inscripciones.filter( inscripcion | inscripcion.tipoInscripcion.queTipoSos()==tipo)
	}
}
