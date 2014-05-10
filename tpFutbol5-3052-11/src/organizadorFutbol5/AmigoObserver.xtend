package organizadorFutbol5

class AmigoObserver implements PartidoObserver{
	
	@Property MailSender mailSender = new MailSender
	override enviar(Partido partido, Jugador jugador) {
		//Mandar al mail...
		println("Tu amigo " + jugador + " se inscribio a: " + partido)
		mailSender.enviar(this.armarMail("Administrador", "Vos", "Notificacion", "Contenido"))
	}
	
	override enviar(Partido partido) {
		//throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	def armarMail(String de, String para, String titulo, String contenido){
		var email = new Mail
		email.de = de
		email.para = para
		email.titulo = titulo
		email.contenido = contenido
		email
	}
	
}