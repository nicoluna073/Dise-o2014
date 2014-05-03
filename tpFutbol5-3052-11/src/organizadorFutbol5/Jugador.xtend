package organizadorFutbol5


class Jugador {
		@Property String nombre
	@Property Integer edad
	@Property Integer penalizado
	
	new(String nombre, Integer edad) {
		this.nombre = nombre
		this.edad = edad
		this.penalizado =0
	}
	
	def Boolean estaPenalizado(){
		if (penalizado < 0) {true}
		else {false}
		
	}

}