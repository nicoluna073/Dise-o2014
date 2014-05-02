package organizadorFutbol5;

import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import organizadorFutbol5.Inscripcion;
import organizadorFutbol5.Jugador;
import organizadorFutbol5.TipoInscripcion;

@SuppressWarnings("all")
public class Partido {
  private String _dia;
  
  public String getDia() {
    return this._dia;
  }
  
  public void setDia(final String dia) {
    this._dia = dia;
  }
  
  private String _horario;
  
  public String getHorario() {
    return this._horario;
  }
  
  public void setHorario(final String horario) {
    this._horario = horario;
  }
  
  private String _lugar;
  
  public String getLugar() {
    return this._lugar;
  }
  
  public void setLugar(final String lugar) {
    this._lugar = lugar;
  }
  
  private Integer _cantidadMaximaJugadores = Integer.valueOf(10);
  
  public Integer getCantidadMaximaJugadores() {
    return this._cantidadMaximaJugadores;
  }
  
  public void setCantidadMaximaJugadores(final Integer cantidadMaximaJugadores) {
    this._cantidadMaximaJugadores = cantidadMaximaJugadores;
  }
  
  private List<Inscripcion> _inscripciones = new ArrayList<Inscripcion>();
  
  public List<Inscripcion> getInscripciones() {
    return this._inscripciones;
  }
  
  public void setInscripciones(final List<Inscripcion> inscripciones) {
    this._inscripciones = inscripciones;
  }
  
  public Partido(final String horario, final String dia) {
    this.setHorario(horario);
    this.setDia(dia);
  }
  
  public boolean agregarInscripcion(final Inscripcion inscripcion) {
    List<Inscripcion> _inscripciones = this.getInscripciones();
    return _inscripciones.add(inscripcion);
  }
  
  public boolean inscribirA(final Jugador jugador, final TipoInscripcion tipo) {
    boolean _xifexpression = false;
    boolean _inscripcionIncompleta = this.inscripcionIncompleta();
    if (_inscripcionIncompleta) {
      Inscripcion _inscripcion = new Inscripcion(jugador, tipo);
      _xifexpression = this.agregarInscripcion(_inscripcion);
    }
    return _xifexpression;
  }
  
  public boolean inscripcionIncompleta() {
    Iterable<Inscripcion> _inscripcionesDeTipo = this.inscripcionesDeTipo("Estandar", this);
    int _size = IterableExtensions.size(_inscripcionesDeTipo);
    Integer _cantidadMaximaJugadores = this.getCantidadMaximaJugadores();
    return (_size < (_cantidadMaximaJugadores).intValue());
  }
  
  public Iterable<Inscripcion> armarListaCandidatos() {
    Iterable<Inscripcion> _inscripcionesDeTipo = this.inscripcionesDeTipo("Estandar", this);
    Iterable<Inscripcion> _inscripcionesDeTipo_1 = this.inscripcionesDeTipo("Solidaria", this);
    Iterable<Inscripcion> _plus = Iterables.<Inscripcion>concat(_inscripcionesDeTipo, _inscripcionesDeTipo_1);
    Iterable<Inscripcion> _inscripcionesDeTipo_2 = this.inscripcionesDeTipo("Condicional", this);
    Iterable<Inscripcion> _plus_1 = Iterables.<Inscripcion>concat(_plus, _inscripcionesDeTipo_2);
    return IterableExtensions.<Inscripcion>take(_plus_1, 10);
  }
  
  public Iterable<Inscripcion> inscripcionesDeTipo(final String tipo, final Partido partido) {
    List<Inscripcion> _inscripciones = this.getInscripciones();
    final Function1<Inscripcion,Boolean> _function = new Function1<Inscripcion,Boolean>() {
      public Boolean apply(final Inscripcion inscripcion) {
        return Boolean.valueOf(inscripcion.sosValida(tipo, partido));
      }
    };
    return IterableExtensions.<Inscripcion>filter(_inscripciones, _function);
  }
}
