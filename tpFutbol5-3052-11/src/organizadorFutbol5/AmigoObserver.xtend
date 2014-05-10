package organizadorFutbol5

class AmigoObserver implements PartidoObserver{
	
	//MailSender mailSender
	override enviar(Partido partido, Jugador jugador) {
		//Mandar al mail...
		println("Tu amigo " + jugador + " se inscribio a: " + partido)
	}
	
	override enviar(Partido partido) {
		//throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}