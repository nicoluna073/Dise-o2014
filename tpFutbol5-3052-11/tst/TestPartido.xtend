import org.junit.Test
import org.junit.Before
import organizadorFutbol5.Partido
import organizadorFutbol5.Jugador
import organizadorFutbol5.Solidaria
import org.junit.Assertimport java.util.ArrayList
import java.util.List
import organizadorFutbol5.Condicional
import organizadorFutbol5.Estandar
import organizadorFutbol5.Inscripcion
import java.util.Arrays
import TestJugador

class TestPartido {


	@Before
	def void setUp() {
		partido = new Partido("21", "jueves")


		solidaria = new Solidaria()
		estandar = new Estandar()
		condicional = new Condicional()
		
		condicional1 = new Condicional([Partido partido| partido.horario == "21"])
		
		inscripcionesJugadores = new ArrayList(
			Arrays.asList(new Inscripcion(jugador1, estandar), new Inscripcion(jugador1, estandar), 
				new Inscripcion(jugador2, estandar), new Inscripcion(jugador3, solidaria), 
				new Inscripcion(jugador4, estandar), new Inscripcion(jugador5, condicional),
				new Inscripcion(jugador6, solidaria), new Inscripcion(jugador7, estandar),
				new Inscripcion(jugador8, solidaria), new Inscripcion(jugador9, estandar),
				new Inscripcion(jugador10, condicional1)))
				partido.setInscripciones(inscripcionesJugadores)
	}
	
	@Test
	def testHayUnaSolaInscripcion() {
		Assert.assertEquals(partido.inscripciones.length, 10)
	}
	
	@Test
	def testAgregoUnaEstandar() {
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Condicional"].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Solidaria"].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Estandar"].length, 4)
		partido.inscribirA(jugador13, estandar)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Condicional"].length, 2)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Solidaria"].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.queTipoSos=="Estandar"].length, 5)
	}
	
	@Test
	def testCumpleCondicion() {
		Assert.assertEquals(condicional1.cumpleCondicion(partido), true)
	}

	@Test
	def testHayUnaSolaInscripcionYEsSolidaria() {
		Assert.assertEquals(partido.getInscripciones.length, 1)
		Assert.assertEquals(partido.getInscripciones.map[a | a.tipoInscripcion.queTipoSos].get(0), "Solidaria")
	}
}