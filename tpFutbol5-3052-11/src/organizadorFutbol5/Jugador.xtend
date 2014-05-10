package organizadorFutbol5

import java.util.ArrayList
import java.util.List

class Jugador {
	
	@Property List<Jugador> amigos = new ArrayList<Jugador>
	
	AmigoObserver amigoObserver = new AmigoObserver
	
	List<Infraccion> infracciones = new ArrayList<Infraccion>
	
	def estaPenalizado(){
		
	}
	
	def generarInfraccion(String fechaDeInfraccion, String motivo) {
		this.infracciones.add(new Infraccion(fechaDeInfraccion, motivo))
	}
	
	def avisarAMisAmigos(Partido partido) {
		this.amigos.forEach[amigoObserver.enviar(partido, this)]
	}

}
