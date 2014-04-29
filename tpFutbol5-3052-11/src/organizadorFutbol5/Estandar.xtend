package organizadorFutbol5

class Estandar implements Inscripcion{
	
	override def void inscribirmeSegunInscripcion(Partido partido, Jugador jugador){
		if(partido.hayCondicional()){
			partido.eliminarPrimerCondicional()
			partido.agregarJugador(jugador)
		}else if (partido.haySolidaria()){
			partido.eliminarPrimerSolidario()
			partido.agregarJugador(jugador)
		}
	}
	
	override def soyEstandar(){true}
	
	override toString(){
		"soy Estandar"
	}
	
	
	override def inscribirmeSiPuedo(Partido partido, Jugador jugador) {
		if (partido.jugadores.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarJugador(jugador)
		} else {
			this.inscribirmeSegunInscripcion(partido, jugador)
		}
	}

	override def boolean cumpleCondicion(Partido partido) {
		true
	}

	override def soySolidaria(){false}
	override def soyCondicional(){false}
	
	
}