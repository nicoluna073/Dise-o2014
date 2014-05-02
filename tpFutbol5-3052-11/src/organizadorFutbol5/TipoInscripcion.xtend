package organizadorFutbol5

abstract class TipoInscripcion {
	
	val tipo = "TipoInscripcion"
		
	def boolean confirmate(String tipo, Partido partido){
		this.tipo == tipo 
	}
}