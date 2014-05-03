import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import organizadorFutbol5.Jugador;

@SuppressWarnings("all")
public class TestJugador {
  private Jugador jugador1;
  
  private Jugador jugador2;
  
  private Jugador jugador3;
  
  private Jugador jugador4;
  
  private Jugador jugador5;
  
  private Jugador jugador6;
  
  private Jugador jugador7;
  
  private Jugador jugador8;
  
  private Jugador jugador9;
  
  private Jugador jugador10;
  
  private Jugador jugador11;
  
  private Jugador jugador12;
  
  private Jugador jugador13;
  
  private Jugador jugador14;
  
  private Jugador jugador15;
  
  private Jugador jugador16;
  
  private Jugador jugador17;
  
  private Jugador jugador18;
  
  private Jugador jugador19;
  
  private Jugador jugador20;
  
  private Jugador jugador21;
  
  private Jugador jugador22;
  
  private Jugador jugador23;
  
  private Jugador jugador24;
  
  private Jugador jugador25;
  
  private List<Jugador> listaJugadores = new ArrayList<Jugador>();
  
  @Before
  public void setUp() {
    Jugador _jugador = new Jugador("Alberto", Integer.valueOf(16));
    this.jugador1 = _jugador;
    Jugador _jugador_1 = new Jugador("Carlos", Integer.valueOf(20));
    this.jugador2 = _jugador_1;
    Jugador _jugador_2 = new Jugador("Jose", Integer.valueOf(30));
    this.jugador3 = _jugador_2;
    Jugador _jugador_3 = new Jugador("Damian", Integer.valueOf(34));
    this.jugador4 = _jugador_3;
    Jugador _jugador_4 = new Jugador("Federico", Integer.valueOf(23));
    this.jugador5 = _jugador_4;
    Jugador _jugador_5 = new Jugador("Pedro", Integer.valueOf(50));
    this.jugador6 = _jugador_5;
    Jugador _jugador_6 = new Jugador("Jorge", Integer.valueOf(42));
    this.jugador7 = _jugador_6;
    Jugador _jugador_7 = new Jugador("Nicolas", Integer.valueOf(28));
    this.jugador8 = _jugador_7;
    Jugador _jugador_8 = new Jugador("Marcelo", Integer.valueOf(26));
    this.jugador9 = _jugador_8;
    Jugador _jugador_9 = new Jugador("Raul", Integer.valueOf(22));
    this.jugador10 = _jugador_9;
    Jugador _jugador_10 = new Jugador("Ezequiel", Integer.valueOf(22));
    this.jugador11 = _jugador_10;
    Jugador _jugador_11 = new Jugador("joaquin", Integer.valueOf(21));
    this.jugador12 = _jugador_11;
    Jugador _jugador_12 = new Jugador("Dario", Integer.valueOf(17));
    this.jugador13 = _jugador_12;
    Jugador _jugador_13 = new Jugador("Juan Pablo", Integer.valueOf(31));
    this.jugador14 = _jugador_13;
    Jugador _jugador_14 = new Jugador("Sebastian", Integer.valueOf(25));
    this.jugador15 = _jugador_14;
    Jugador _jugador_15 = new Jugador("Hernan", Integer.valueOf(22));
    this.jugador16 = _jugador_15;
    Jugador _jugador_16 = new Jugador("Javier", Integer.valueOf(29));
    this.jugador17 = _jugador_16;
    Jugador _jugador_17 = new Jugador("Matias", Integer.valueOf(30));
    this.jugador18 = _jugador_17;
    Jugador _jugador_18 = new Jugador("Martin", Integer.valueOf(30));
    this.jugador19 = _jugador_18;
    Jugador _jugador_19 = new Jugador("Agustin", Integer.valueOf(19));
    this.jugador20 = _jugador_19;
    Jugador _jugador_20 = new Jugador("Mariano", Integer.valueOf(32));
    this.jugador21 = _jugador_20;
    Jugador _jugador_21 = new Jugador("Roberto", Integer.valueOf(43));
    this.jugador22 = _jugador_21;
    Jugador _jugador_22 = new Jugador("Franco", Integer.valueOf(40));
    this.jugador23 = _jugador_22;
    Jugador _jugador_23 = new Jugador("Santiago", Integer.valueOf(28));
    this.jugador24 = _jugador_23;
    Jugador _jugador_24 = new Jugador("Gonzalo", Integer.valueOf(27));
    this.jugador25 = _jugador_24;
    List<Jugador> _asList = Arrays.<Jugador>asList(this.jugador1, this.jugador2, this.jugador3, this.jugador4, this.jugador5, this.jugador6, this.jugador7, this.jugador8, this.jugador9, this.jugador10, this.jugador11, this.jugador12, this.jugador13, this.jugador14, this.jugador15, this.jugador16, this.jugador17, this.jugador18, this.jugador19, this.jugador20, this.jugador21, this.jugador22, this.jugador23, this.jugador24, this.jugador25);
    ArrayList<Jugador> _arrayList = new ArrayList<Jugador>(_asList);
    this.listaJugadores = _arrayList;
  }
  
  @Test
  public void testHayUnaSolaInscripcion() {
    int _size = this.listaJugadores.size();
    Assert.assertEquals(_size, 25);
  }
}
