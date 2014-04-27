import org.junit.Test
import org.junit.Before
import organizadorFutbol5.Partido
import organizadorFutbol5.Jugador
import organizadorFutbol5.Solidaria
import org.junit.Assert

class TestPartido {

	Partido partido
	Jugador jugador
	Solidaria solidaria

	@Before
	def void setUp() {
		partido = new Partido("21", "jueves")
		jugador = new Jugador()
		solidaria = new Solidaria()
		
		jugador.inscribirmeA(partido, solidaria)
	}

	@Test
	def testHayUnaSolaInscripcion() {
		Assert.assertEquals(partido.getInscripciones.length, 1)
	}

	@Test
	def testHayUnaSolaInscripcionYEsSolidaria() {
		Assert.assertEquals(partido.getInscripciones.length, 1)
		Assert.assertEquals(partido.getInscripciones.map[toString], ["soy Solidaria"])
	}
}
