import org.junit.Test
import org.junit.Before
import organizadorFutbol5.Partido
import organizadorFutbol5.Jugador
import organizadorFutbol5.Solidaria
import org.junit.Assert
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
	List<Jugador> inscripcionesJugadoresCon10 = new ArrayList<Jugador>
	List<Jugador> inscripcionesJugadoresCon9 = new ArrayList<Jugador>

	Jugador jugadorSolidario
	Jugador jugadorEstandar
	Jugador jugadorCondicional

	@Before
	def void setUp() {
		partido = new Partido("21", "jueves")
		jugador = new Jugador()
		solidaria = new Solidaria()
		estandar = new Estandar()

		jugadorSolidario = new Jugador()
		jugadorEstandar = new Jugador()
		jugadorCondicional = new Jugador()

		jugadorEstandar.setTipoInscripcion(estandar)
		jugadorSolidario.setTipoInscripcion(solidaria)

		condicional = new Condicional([Partido partido|partido.horario == "21"])
		condicionalNoCumple = new Condicional([Partido partido|partido.dia == "miercoles"])

		jugadorCondicional.setTipoInscripcion(condicional)
		jugador.inscribirmeA(partido, solidaria)

		inscripcionesJugadoresCon10 = new ArrayList(
			Arrays.asList(jugadorEstandar, jugadorCondicional, jugadorSolidario, jugadorEstandar, jugadorCondicional,
				jugadorSolidario, jugadorEstandar, jugadorCondicional, jugadorSolidario, jugadorEstandar))

		inscripcionesJugadoresCon9 = new ArrayList(
			Arrays.asList(jugadorEstandar, jugadorCondicional, jugadorSolidario, jugadorEstandar, jugadorCondicional,
				jugadorSolidario, jugadorEstandar, jugadorCondicional, jugadorSolidario))

		partido.setJugadores(inscripcionesJugadoresCon10)

	}

	@Test
	def testAgregoUnaEstandar() {
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, estandar)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 2)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 5)
	}

	@Test
	def testAgregoUnaSolidaria() {
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, solidaria)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 2)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 4)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 4)
	}

	@Test
	def testNoAgregoUnaCondicionalPorqueNoHayEspacioParaEl() {
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 4)
		jugador.inscribirmeA(partido, condicional)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyCondicional].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soySolidaria].length, 3)
		Assert.assertEquals(partido.jugadores.filter[tipoInscripcion.soyEstandar].length, 4)
	}

	@Test
	def testAgregoUnaEstandarTeniendoMenosDeDiezParticipantes() {
		partido.setJugadores(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.jugadores.length, 9)
		jugador.inscribirmeA(partido, estandar)
		Assert.assertEquals(partido.jugadores.length, 10)
	}

	@Test
	def testAgregoUnaSolidariaTeniendoMenosDeDiezParticipantes() {
		partido.setJugadores(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.jugadores.length, 9)
		jugador.inscribirmeA(partido, solidaria)
		Assert.assertEquals(partido.jugadores.length, 10)
	}

	@Test
	def testAgregoUnaCondicionalTeniendoMenosDeDiezParticipantes() {
		partido.setJugadores(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.jugadores.length, 9)
		jugador.inscribirmeA(partido, condicional)
		Assert.assertEquals(partido.jugadores.length, 10)
	}

	@Test
	def testNoAgregoCondicionalPorqueNoCumpleCondicion() {
		partido.setJugadores(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.jugadores.length, 9)
		jugador.inscribirmeA(partido, condicionalNoCumple)
		Assert.assertEquals(partido.jugadores.length, 9)
	}

}
