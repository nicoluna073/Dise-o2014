package organizadorFutbol5

class Estandar extends TipoInscripcion{
	
	override def void inscribirmeSegunInscripcion(Partido partido, Inscripcion inscripcion){
		if(partido.hayCondicional()){
			partido.eliminarPrimerCondicional()
			partido.agregarInscripcion(inscripcion)
		}else if (partido.haySolidaria()){
			partido.eliminarPrimerSolidario()
			partido.agregarInscripcion(inscripcion)
		}
	}
	
	override def soyEstandar(){true}
	
	override toString(){
		"soy Estandar"
	}
}