package organizadorFutbol5

abstract class TipoInscripcion {

	def inscribirmeSiPuedo(Partido partido, Inscripcion inscripcion) {
		if (partido.inscripciones.length < 10 && this.cumpleCondicion(partido)) {
			partido.agregarInscripcion(inscripcion)
		} else {
			this.inscribirmeSegunInscripcion(partido, inscripcion)
		}
	}

	def boolean cumpleCondicion(Partido partido) {
		true
	}

	def void inscribirmeSegunInscripcion(Partido partido, Inscripcion inscripcion) {
	}
	
	def soyEstandar(){false}
	def soySolidaria(){false}
	def soyCondicional(){false}
}
