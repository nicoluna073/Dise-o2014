package organizadorFutbol5

class Estandar extends Inscripcion{
	
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
}