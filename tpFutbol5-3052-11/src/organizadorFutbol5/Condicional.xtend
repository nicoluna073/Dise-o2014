package organizadorFutbol5

class Condicional extends TipoInscripcion{
	
	override queTipoSos(){
		"Condicional"
	}
	
	(Partido) => boolean condicion

	new (){
	}

	new ((Partido) => boolean condicion){
		this.condicion = condicion
	}

	def boolean cumpleCondicion(Partido partido) {
		this.condicion.apply(partido)
	}

}