package organizadorFutbol5

class Estandar extends Inscripcion{
	
	override def void inscribirmeSegunInscripcion(Partido partido){
		if(partido.hayCondicional()){
			partido.eliminarPrimerCondicional()
			partido.agregarInscripcion(this)
		}else if (partido.haySolidaria()){
			partido.eliminarPrimerSolidario()
			partido.agregarInscripcion(this)
		}
	}
	
	override def soyEstandar(){true}
	
	override toString(){
		"soy Estandar"
	}
}