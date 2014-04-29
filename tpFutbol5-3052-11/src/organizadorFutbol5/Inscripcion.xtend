package organizadorFutbol5

interface Inscripcion {

	def void inscribirmeSiPuedo(Partido partido, Jugador jugador)
	def void inscribirmeSegunInscripcion(Partido partido, Jugador jugador)
	def boolean soySolidaria()
	def boolean soyCondicional()
	def boolean soyEstandar()
	def boolean cumpleCondicion(Partido partido)
	
}
