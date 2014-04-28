package organizadorFutbol5

class Solidaria extends TipoInscripcion {

	override def void inscribirmeSegunInscripcion(Partido partido, Inscripcion inscripcion) {
		if (partido.hayCondicional()) {
			partido.eliminarPrimerCondicional()
			partido.agregarInscripcion(inscripcion)
		}
	}

	override def soySolidaria(){true}
	override toString() {
		"soy Solidaria"
	}

}
