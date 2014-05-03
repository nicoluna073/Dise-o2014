import org.junit.Before
import organizadorFutbol5.Condicional
import organizadorFutbol5.Estandar
import organizadorFutbol5.Partido
import organizadorFutbol5.Solidaria

class TestCondicional {

	Partido partido
	Solidaria solidaria
	Estandar estandar
	Condicional condicionalDia
	Condicional condicionalHorario
	

@Before
			
	def void setUp() {
		partido = new Partido("21", "jueves")
		solidaria = new Solidaria()
		estandar = new Estandar()
		
		condicionalDia = new Condicional([Partido partido| partido.dia =="Jueves"])
		condicionalHorario = new Condicional([Partido partido| partido.horario == "21"])
		
		
	}
	
	
	
}