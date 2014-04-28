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
	Condicional condicionalNoCumple
	List<Inscripcion> inscripcionesJugadoresCon10 = new ArrayList<Inscripcion>
	List<Inscripcion> inscripcionesJugadoresCon9 = new ArrayList<Inscripcion>
	Inscripcion inscripcionSolidaria = new Inscripcion()
	Inscripcion inscripcionEstandar = new Inscripcion()
	Inscripcion inscripcionCondicional = new Inscripcion()

	@Before
	def void setUp() {
		partido = new Partido("21", "jueves")
		jugador = new Jugador()
		solidaria = new Solidaria()
		estandar = new Estandar()

		condicional = new Condicional([Partido partido|partido.horario == "21"])
		condicionalNoCumple = new Condicional([Partido partido|partido.dia == "miercoles"])

		jugador.inscribirmeA(partido, solidaria)
		inscripcionEstandar.setTipoInscripcion(estandar)
		inscripcionCondicional.setTipoInscripcion(condicional)
		inscripcionSolidaria.setTipoInscripcion(solidaria)

		inscripcionesJugadoresCon10 = new ArrayList(
			Arrays.asList(inscripcionEstandar, inscripcionCondicional, inscripcionSolidaria, inscripcionEstandar,
				inscripcionCondicional, inscripcionSolidaria, inscripcionEstandar, inscripcionCondicional,
				inscripcionSolidaria, inscripcionEstandar))

		inscripcionesJugadoresCon9 = new ArrayList(
			Arrays.asList(inscripcionEstandar, inscripcionCondicional, inscripcionSolidaria, inscripcionEstandar,
				inscripcionCondicional, inscripcionSolidaria, inscripcionEstandar, inscripcionCondicional,
				inscripcionSolidaria))
		partido.setInscripciones(inscripcionesJugadoresCon10)	

	}

	@Test
	def testAgregoUnaEstandar() {
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, estandar)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 2)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 5)
	}

	@Test
	def testAgregoUnaSolidaria() {
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, solidaria)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 2)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 4)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 4)
	}

	@Test
	def testNoAgregoUnaCondicionalPorqueNoHayEspacioParaEl() {
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, condicional)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.inscripciones.filter[tipoInscripcion.soyEstandar].length, 4)
	}

	@Test
	def testAgregoUnaEstandarTeniendoMenosDeDiezParticipantes() {
		partido.setInscripciones(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.inscripciones.length, 9)
		jugador.inscribirmeA(partido, estandar)
		Assert.assertEquals(partido.inscripciones.length, 10)
	}

	@Test
	def testAgregoUnaSolidariaTeniendoMenosDeDiezParticipantes() {
		partido.setInscripciones(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.inscripciones.length, 9)
		jugador.inscribirmeA(partido, solidaria)
		Assert.assertEquals(partido.inscripciones.length, 10)
	}

	@Test
	def testAgregoUnaCondicionalTeniendoMenosDeDiezParticipantes() {
		partido.setInscripciones(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.inscripciones.length, 9)
		jugador.inscribirmeA(partido, condicional)
		Assert.assertEquals(partido.inscripciones.length, 10)
	}

	@Test
	def testNoAgregoCondicionalPorqueNoCumpleCondicion() {
		partido.setInscripciones(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.inscripciones.length, 9)
		jugador.inscribirmeA(partido, condicionalNoCumple)
		Assert.assertEquals(partido.inscripciones.length, 9)
	}

}
