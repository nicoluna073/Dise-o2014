package organizadorFutbol5

class Inscripcion {
	@Property TipoInscripcion tipoInscripcion
	Jugador jugador

	def inscribirA(Jugador jugador, Partido partido, TipoInscripcion tipoInscripcion) {
		this.jugador = jugador
		this.tipoInscripcion = tipoInscripcion
		tipoInscripcion.inscribirmeSiPuedo(partido, this)
	}
}
