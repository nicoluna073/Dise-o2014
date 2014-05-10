package organizadorFutbol5

class AdminObserver implements PartidoObserver {

	//MailSender mailSender
	override enviar(Partido partido, Jugador jugador) {
		
		//Aca va ir el adapter para el mail	
		println(
			"Se dio de baja el jugador: " + jugador + "para el partido del dia " + partido.dia + " a las " +
				partido.horario + " el cual dejo de estar confirmado")

	}

	override enviar(Partido partido) {

		//Hacer el adapter para el mail.
		println("El partido del dia " + partido.dia + " a las " + partido.horario + " se confirmo")
	}
	

}
