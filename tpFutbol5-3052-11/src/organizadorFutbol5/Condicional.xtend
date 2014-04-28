package organizadorFutbol5

class Condicional extends TipoInscripcion {

	(Partido)=>boolean condicion

	new() {
	}

	new((Partido)=>boolean condicion) {
		this.condicion = condicion
	}

	override def soyCondicional() {
		true
	}

	override def boolean cumpleCondicion(Partido partido) {
		this.condicion.apply(partido)
	}

	override toString() {
		"soy Condicional"
	}
}
