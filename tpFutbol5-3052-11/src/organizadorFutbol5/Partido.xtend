package organizadorFutbol5

import java.util.List
import java.util.ArrayList

class Partido {
	@Property String horario // TODO: Pasarlo a date?
	@Property String dia // TODO: Pasarlo a date?
	@Property List<Jugador> jugadores = new ArrayList<Jugador>

	new(String horario, String dia) {
		this.horario = horario
		this.dia = dia
	}

	def agregarJugador(Jugador jugador) {
		this.jugadores.add(jugador)
	}

	def eliminarPrimerCondicional() {
		this.jugadores.remove(this.jugadores.findFirst[tipoInscripcion.soyCondicional])
	}

	def boolean hayCondicional() {
		this.jugadores.exists[tipoInscripcion.soyCondicional]
	}
	
	def boolean haySolidaria() {
		this.jugadores.exists[tipoInscripcion.soySolidaria]
	}
	
	def eliminarPrimerSolidario() {
		this.jugadores.remove(this.jugadores.findFirst[tipoInscripcion.soySolidaria])
	}

}
