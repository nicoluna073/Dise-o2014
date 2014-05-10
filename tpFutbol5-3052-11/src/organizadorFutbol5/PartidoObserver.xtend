package organizadorFutbol5

interface PartidoObserver {
	def void enviar(Partido partido, Jugador jugador)
	def void enviar(Partido partido)
}
