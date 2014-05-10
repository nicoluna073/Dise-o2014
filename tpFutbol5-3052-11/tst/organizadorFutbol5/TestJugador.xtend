package organizadorFutbol5

import java.util.List
import java.util.ArrayList
import java.util.Arrays
import org.junit.Before
import org.junit.Test
import org.mockito.Mockito
import org.junit.Assert

class TestJugador extends Futbol5TestCase {

	Jugador jugadorCon3Amigos
	Jugador jugadorConCeroInfracciones
	Jugador jugadorConUnaInfraccion
	Partido partido

	@Before
	override def void setUp() {

		super.setUp()
		jugadorConCeroInfracciones = jugador1
		jugadorConUnaInfraccion = jugador2
		//TODO: hacer con generarInfraccion ?
		jugadorConUnaInfraccion.setInfracciones(new ArrayList(Arrays.asList(new Infraccion("10/05/2014", "faltazo"))))
		
		jugadorCon3Amigos = new Jugador("Jugador con tres amigos", 22)
		jugadorCon3Amigos.setAmigos(new ArrayList(Arrays.asList(jugador1, jugador2, jugador3)))
		partido = new Partido("23", "jueves", "la fabrica")

	}
	
	@Test
	def testAumentaInfraccionCuandoNoTieneInfracciones(){
		jugadorConCeroInfracciones.generarInfraccion("20/07/2014", "por boton")
		Assert.assertEquals(1, jugadorConCeroInfracciones.infracciones.size)
	}
	
	@Test
	def testAumentaInfraccionCuandoTieneInfracciones(){
		jugadorConUnaInfraccion.generarInfraccion("20/07/2014", "por boton")
		Assert.assertEquals(2, jugadorConUnaInfraccion.infracciones.size)
	}	
	
//	@Test
//	def void testAvisoAMis3Amigos(){
//		val mockedAmigoObserver = Mockito.mock(typeof(AmigoObserver))
//		jugadorCon3Amigos.amigoObserver = mockedAmigoObserver
//		jugadorCon3Amigos.avisarAMisAmigos(partido)
//		Mockito.verify(mockedAmigoObserver, Mockito.times(3)).enviar(partido, jugadorCon3Amigos)
//	}	

}
