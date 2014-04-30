package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	@Property String dia
	@Property String hora
	@Property String lugar
	@Property Integer cantidadMaximaJugadores //aca va una variable de clase, no se como se declara
	@Property List<Inscripcion> inscripciones = new ArrayList<Inscripcion>
	
	def asociarJugadorAEquipo(Jugador Jugador, Equipo equipo){
		
	}
	
	def inscribirA(Jugador jugador, TipoInscripcion tipo){
		if(this.inscripcionIncompleta){
			this.inscripciones.add(new Inscripcion(jugador, tipo))
		}
	}
	
	def inscripcionIncompleta(){
		(this.inscripciones.filter( inscripcion | inscripcion.tipoInscripcion.sosEstandar())).size
																	< this.cantidadMaximaJugadores
	}
	
	def armarListaCandidatos(){
		((this.inscripciones.filter( inscripcion | inscripcion.tipoInscripcion.sosEstandar())) +
		(this.inscripciones.filter( inscripcion | inscripcion.tipoInscripcion.sosSolidaria())) +
		(this.inscripciones.filter( inscripcion | inscripcion.tipoInscripcion.sosCondicional()))).take(10)
	}
}