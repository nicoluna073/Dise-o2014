package organizadorFutbol5

import org.junit.Before
import org.junit.Test
import org.junit.Assert

class TestCondicional extends Futbol5TestCase {

	Partido partidoEnAltoPotreroMiercolesALas21
	Condicional condicionalConCondicionPartidoALas21
	Condicional condicionalConCondicionPartidoALas21LosDomingos

	@Before
	override def setUp() {
		super.setUp()
		partidoEnAltoPotreroMiercolesALas21 = new Partido("21", "miercoles", "alto potrero")
		condicionalConCondicionPartidoALas21 = new Condicional([partido|partido.horario == "21"])
		condicionalConCondicionPartidoALas21LosDomingos = new Condicional(
			[partido|partido.horario == "21" && partido.dia == "domingo"])
	}

	@Test
	def testCumpleCondicionDePartido() {
		Assert.assertTrue(
			"El partido cumple con la condicion impuesta ya que tiene una sola condicion que es el horario a las 21",
			condicionalConCondicionPartidoALas21.cumpleCondicion(partidoEnAltoPotreroMiercolesALas21))
	}

	@Test
	def testNoCumpleCondicionDePartido() {
		Assert.assertFalse(
			"El partido no cumple con la condicion impuesta ya que quiere que el horario sea a las 21 y el domingo",
			condicionalConCondicionPartidoALas21LosDomingos.cumpleCondicion(partidoEnAltoPotreroMiercolesALas21))
		
	}

}
