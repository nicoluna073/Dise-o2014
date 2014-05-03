import com.google.common.base.Objects;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.junit.Before;
import organizadorFutbol5.Condicional;
import organizadorFutbol5.Estandar;
import organizadorFutbol5.Partido;
import organizadorFutbol5.Solidaria;

@SuppressWarnings("all")
public class TestCondicional {
  private Partido partido;
  
  private Solidaria solidaria;
  
  private Estandar estandar;
  
  private Condicional condicionalDia;
  
  private Condicional condicionalHorario;
  
  @Before
  public void setUp() {
    Partido _partido = new Partido("21", "jueves");
    this.partido = _partido;
    Solidaria _solidaria = new Solidaria();
    this.solidaria = _solidaria;
    Estandar _estandar = new Estandar();
    this.estandar = _estandar;
    final Function1<Partido,Boolean> _function = new Function1<Partido,Boolean>() {
      public Boolean apply(final Partido partido) {
        String _dia = partido.getDia();
        return Boolean.valueOf(Objects.equal(_dia, "Jueves"));
      }
    };
    Condicional _condicional = new Condicional(_function);
    this.condicionalDia = _condicional;
    final Function1<Partido,Boolean> _function_1 = new Function1<Partido,Boolean>() {
      public Boolean apply(final Partido partido) {
        String _horario = partido.getHorario();
        return Boolean.valueOf(Objects.equal(_horario, "21"));
      }
    };
    Condicional _condicional_1 = new Condicional(_function_1);
    this.condicionalHorario = _condicional_1;
  }
}
