package organizadorFutbol5

class Solidaria extends Inscripcion {

	override def void inscribirmeSegunInscripcion(Partido partido) {
		if (partido.hayCondicional()) {
			partido.eliminarPrimerCondicional()
			partido.agregarInscripcion(this)
		}
	}

	override def soySolidaria(){true}
	override toString() {
		"soy Solidaria"
	}

}
