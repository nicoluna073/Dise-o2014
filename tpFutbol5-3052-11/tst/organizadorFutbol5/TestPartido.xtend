package organizadorFutbol5

import org.junit.Before

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

class TestPartido extends Futbol5TestCase{

	Partido partido
	Jugador jugador
	Jugador jugador1
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
	override def void setUp() {
		super.setUp()
		partido = new Partido("21", "jueves")
		jugador = new Jugador()
		solidaria = new Solidaria()
		estandar = new Estandar()
		jugador1 = new Jugador()

		condicional = new Condicional([Partido partido|partido.horario == "21"])
		condicionalNoCumple = new Condicional([Partido partido|partido.dia == "miercoles"])

		partido.inscribirA(jugador, solidaria)
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
		jugador.setAmigos(Arrays.asList(jugador,jugador,jugador))	

	}

	@Test
	def testInscripcionesDelTipoCondicionalIgualA3(){
		Assert.assertEquals(partido.inscripcionesDeTipo(Tipo.CONDICIONAL, partido).size, 3)
	}
	
	@Test
	def testPartidoConfirmado(){
		partido.setInscripciones(inscripcionesJugadoresCon9)
		Assert.assertEquals(partido.inscripcionIncompleta, true)
		partido.inscribirA(jugador, condicional)
		Assert.assertEquals(partido.estaConfirmado, true)
	}
	
	@Test
	def testAvisaAMisAmigos(){
		partido.setInscripciones(inscripcionesJugadoresCon9)
		partido.inscribirA(jugador, condicional)
		partido.inscribirA(jugador, condicional)
		Assert.assertEquals(partido.inscripcionIncompleta, true)
	}
	
	@Test
	def testSeBajoUnJugador(){
		partido.setInscripciones(inscripcionesJugadoresCon9)
		partido.inscribirA(jugador1, condicional)
		partido.bajarA(jugador1)
		Assert.assertEquals(partido.inscripcionIncompleta, true)
	}
}