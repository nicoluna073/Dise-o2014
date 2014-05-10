package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	@Property String dia
	@Property String horario
	final static val CANTIDAD_MAX_JUGADORES = 10
	@Property List<Inscripcion> inscripciones //TODO: cambiar a Set?
	AdminObserver administrador = new AdminObserver

	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
		this.inscripciones = new ArrayList<Inscripcion>
	}

	def agregarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.add(inscripcion)
	}

	def eliminarInscripcion(Inscripcion inscripcion) {
		this.inscripciones.remove(inscripcion)
	}

	def inscribirA(Jugador jugador, TipoInscripcion tipo) {
		if (this.inscripcionIncompleta) {
			//TODO: Armar un builder para la inscripcion ?
			this.agregarInscripcion(new Inscripcion(jugador, tipo))
			jugador.avisarAMisAmigos(this)
		} else {
			println("El partido ya tiene diez jugadores con plaza confirmada.")
		}
		if (this.estaConfirmado()) {
			administrador.enviar(this)
		}
	}

	def inscripcionIncompleta() {
		this.inscripcionesDeTipo(Tipo.ESTANDAR, this).size < CANTIDAD_MAX_JUGADORES
	}

	def armarListaCandidatos() {
		(this.inscripcionesDeTipo(Tipo.ESTANDAR, this) + this.inscripcionesDeTipo(Tipo.SOLIDARIA, this) +
			this.inscripcionesDeTipo(Tipo.CONDICIONAL, this)).take(10)
	}

	def inscripcionesDeTipo(Tipo tipo, Partido partido) {
		this.inscripciones.filter[sosValida(tipo, partido)]
	}

	//Caso de uso: Baja de un partido
	def bajarA(Jugador jugador) {

		//genera infraccion y manda al admin si es que no llega a los diez confirmados
		this.inscripciones.remove(this.obtenerInscripcionPorJugador(jugador))
		jugador.generarInfraccion("dia", "motivo")
		if(this.noTieneDiezConfirmados()){
			administrador.enviar(this, jugador)
		}

	}

	def bajarA(Jugador jugador, Jugador suplente, TipoInscripcion tipo) {
		this.eliminarInscripcion(this.obtenerInscripcionPorJugador(jugador))
		this.inscribirA(suplente, tipo)
	}

	def obtenerInscripcionPorJugador(Jugador jugador) {
		this.inscripciones.findFirst[jugador.equals(jugador)]
	}

	def estaConfirmado() {
		this.inscripciones.size.equals(CANTIDAD_MAX_JUGADORES)
	}

	def noTieneDiezConfirmados() {
		this.inscripciones.size < CANTIDAD_MAX_JUGADORES
	}

}
