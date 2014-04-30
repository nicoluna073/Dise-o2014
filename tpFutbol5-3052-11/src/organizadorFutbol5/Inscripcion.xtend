package organizadorFutbol5

class Inscripcion {
	@Property TipoInscripcion tipoInscripcion
	@Property Jugador jugador
	
	new(Jugador jugadorAinscribir, TipoInscripcion tipo){
		this.tipoInscripcion = tipo
		this.jugador = jugadorAinscribir
	} 
}