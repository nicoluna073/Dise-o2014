package organizadorFutbol5

class Condicional extends TipoInscripcion{
	
	(Partido) => boolean condicion
	Tipo tipo = Tipo.CONDICIONAL

	new (){
	}

	new ((Partido) => boolean condicion){
		this.condicion = condicion
	}

	def boolean cumpleCondicion(Partido partido) {
		this.condicion.apply(partido)
	}
	
	override confirmate(Tipo tipo, Partido partido){
		tipo==this.tipo && cumpleCondicion(partido)
		//super.confirmate(tipo, partido) && cumpleCondicion(partido)
	}

}