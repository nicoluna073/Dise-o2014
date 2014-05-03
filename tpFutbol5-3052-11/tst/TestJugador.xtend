import org.junit.Test
import org.junit.Before
import organizadorFutbol5.Jugador
import org.junit.Assert
import java.util.ArrayList
import java.util.List

import java.util.Arrays

class TestJugador {
	Jugador jugador1
	Jugador jugador2
	Jugador jugador3
	Jugador jugador4
	Jugador jugador5
	Jugador jugador6
	Jugador jugador7
	Jugador jugador8
	Jugador jugador9
	Jugador jugador10
	Jugador jugador11
	Jugador jugador12
	Jugador jugador13
	Jugador jugador14
	Jugador jugador15
	Jugador jugador16
	Jugador jugador17
	Jugador jugador18
	Jugador jugador19
	Jugador jugador20
	Jugador jugador21
	Jugador jugador22
	Jugador jugador23
	Jugador jugador24
	Jugador jugador25
	List<Jugador> listaJugadores = new ArrayList<Jugador>
		
	
@Before
			
	def void setUp() {
	
	jugador1 = new Jugador("Alberto",16)
		jugador2 = new Jugador("Carlos",20)
		jugador3 = new Jugador("Jose",30)
		jugador4 = new Jugador("Damian",34)
		jugador5 = new Jugador("Federico",23)
		jugador6 = new Jugador("Pedro",50)
		jugador7 = new Jugador("Jorge",42)
		jugador8 = new Jugador("Nicolas",28)
		jugador9 = new Jugador("Marcelo",26)
		jugador10 = new Jugador("Raul",22)
		jugador11 = new Jugador("Ezequiel",22)
		jugador12 = new Jugador("joaquin",21)
		jugador13 = new Jugador("Dario",17)
		jugador14 = new Jugador("Juan Pablo",31)
		jugador15 = new Jugador("Sebastian",25)
		jugador16 = new Jugador("Hernan",22)
		jugador17 = new Jugador("Javier",29)
		jugador18 = new Jugador("Matias",30)
		jugador19 = new Jugador("Martin",30)
		jugador20 = new Jugador("Agustin",19)
		jugador21 = new Jugador("Mariano",32)
		jugador22 = new Jugador("Roberto",43)
		jugador23 = new Jugador("Franco",40)
		jugador24 = new Jugador("Santiago",28)
		jugador25 = new Jugador("Gonzalo",27)
	
	listaJugadores = new ArrayList(
			Arrays.asList(jugador1,jugador2,jugador3,jugador4,jugador5,jugador6,jugador7,jugador8,jugador9,jugador10,jugador11,jugador12
				,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,jugador19,jugador20,jugador21,jugador22,jugador23,jugador24
			,jugador25))
	}
	
	
	@Test
	
	def testHayUnaSolaInscripcion() {
		Assert.assertEquals(listaJugadores.size,25)
	}
	
	
}