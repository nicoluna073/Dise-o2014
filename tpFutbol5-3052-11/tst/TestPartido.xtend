import org.junit.Test
import org.junit.Before
import organizadorFutbol5.Partido
import organizadorFutbol5.Jugador
import organizadorFutbol5.Solidaria
import org.junit.Assert
import organizadorFutbol5.Inscripcion
import java.util.List
import java.util.ArrayList
import java.util.Arrays
import organizadorFutbol5.Estandar
import organizadorFutbol5.Condicional

class TestPartido {

	Partido partido
	Jugador jugador
	Solidaria solidaria
	Estandar estandar
	Condicional condicional
	Condicional condicional1
	List<Inscripcion> inscripcionesJugadores = new ArrayList<Inscripcion>

	@Before
	def void setUp() {
		partido = new Partido("21", "jueves")
		jugador = new Jugador()
		solidaria = new Solidaria()
		estandar = new Estandar()
		condicional = new Condicional()
		
		condicional1 = new Condicional([Partido partido| partido.horario == "21"])

		jugador.inscribirmeA(partido, solidaria)

		inscripcionesJugadores = new ArrayList(
			Arrays.asList(estandar, condicional, solidaria, estandar, condicional, solidaria, estandar, condicional,
				solidaria, estandar))
		partido.setInscripciones(inscripcionesJugadores)
		
	}

	@Test
	def testHayUnaSolaInscripcion() {
		Assert.assertEquals(partido.inscripciones.length, 10)
	}

	@Test
	def testAgregoUnaEstandar() {
		Assert.assertEquals(partido.inscripciones.filter[soyCondicional].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[soyEstandar].length, 4)
		jugador.inscribirmeA(partido, estandar)
		Assert.assertEquals(partido.inscripciones.filter[soyCondicional].length, 2)
		Assert.assertEquals(partido.inscripciones.filter[soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[soyEstandar].length, 5)
	}
	
		@Test
	def testCumpleCondicion() {
		Assert.assertEquals(condicional1.cumpleCondicion(partido), true)
	}
	
}
