package organizadorFutbol5

class Condicional extends TipoInscripcion{
	
	val tipo = "Condicional"
	
	(Partido) => boolean condicion

	new (){
	}

	new ((Partido) => boolean condicion){
		this.condicion = condicion
	}

	def boolean cumpleCondicion(Partido partido) {
		this.condicion.apply(partido)
	}
	
	override confirmate(String tipo, Partido partido){
		tipo==this.tipo && cumpleCondicion(partido)
	}
}