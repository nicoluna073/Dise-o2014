package organizadorFutbol5

import java.util.ArrayList
import java.util.List

class Jugador {
	
	@Property List<Jugador> amigos = new ArrayList<Jugador>
	
	@Property int edad
	@Property String nombre
	
	@Property AmigoObserver amigoObserver = new AmigoObserver
	
	@Property List<Infraccion> infracciones = new ArrayList<Infraccion>
	
	new(){}
	new(String nombre, int edad){
		this.nombre = nombre
		this.edad = edad
	}
	def estaPenalizado(){
		
	}
	
	def generarInfraccion(String fechaDeInfraccion, String motivo) {
		this.infracciones.add(new Infraccion(fechaDeInfraccion, motivo))
	}
	
	def avisarAMisAmigos(Partido partido) {
		this.amigos.forEach[amigoObserver.enviar(partido, this)]
	}

}
