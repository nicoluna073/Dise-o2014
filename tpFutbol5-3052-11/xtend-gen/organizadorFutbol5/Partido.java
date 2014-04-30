package organizadorFutbol5;

import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Functions.Function0;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import organizadorFutbol5.Equipo;
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
  
  private String _hora;
  
  public String getHora() {
    return this._hora;
  }
  
  public void setHora(final String hora) {
    this._hora = hora;
  }
  
  private String _lugar;
  
  public String getLugar() {
    return this._lugar;
  }
  
  public void setLugar(final String lugar) {
    this._lugar = lugar;
  }
  
  private Integer _cantidadMaximaJugadores;
  
  public Integer getCantidadMaximaJugadores() {
    return this._cantidadMaximaJugadores;
  }
  
  public void setCantidadMaximaJugadores(final Integer cantidadMaximaJugadores) {
    this._cantidadMaximaJugadores = cantidadMaximaJugadores;
  }
  
  private List<Inscripcion> _inscripciones = new Function0<List<Inscripcion>>() {
    public List<Inscripcion> apply() {
      ArrayList<Inscripcion> _arrayList = new ArrayList<Inscripcion>();
      return _arrayList;
    }
  }.apply();
  
  public List<Inscripcion> getInscripciones() {
    return this._inscripciones;
  }
  
  public void setInscripciones(final List<Inscripcion> inscripciones) {
    this._inscripciones = inscripciones;
  }
  
  public Object asociarJugadorAEquipo(final Jugador Jugador, final Equipo equipo) {
    return null;
  }
  
  public Boolean inscribirA(final Jugador jugador, final TipoInscripcion tipo) {
    Boolean _xifexpression = null;
    boolean _inscripcionIncompleta = this.inscripcionIncompleta();
    if (_inscripcionIncompleta) {
      List<Inscripcion> _inscripciones = this.getInscripciones();
      Inscripcion _inscripcion = new Inscripcion(jugador, tipo);
      boolean _add = _inscripciones.add(_inscripcion);
      _xifexpression = Boolean.valueOf(_add);
    }
    return _xifexpression;
  }
  
  public boolean inscripcionIncompleta() {
    List<Inscripcion> _inscripciones = this.getInscripciones();
    final Function1<Inscripcion,Boolean> _function = new Function1<Inscripcion,Boolean>() {
      public Boolean apply(final Inscripcion inscripcion) {
        TipoInscripcion _tipoInscripcion = inscripcion.getTipoInscripcion();
        Boolean _sosEstandar = _tipoInscripcion.sosEstandar();
        return _sosEstandar;
      }
    };
    Iterable<Inscripcion> _filter = IterableExtensions.<Inscripcion>filter(_inscripciones, _function);
    int _size = IterableExtensions.size(_filter);
    Integer _cantidadMaximaJugadores = this.getCantidadMaximaJugadores();
    boolean _lessThan = (_size < (_cantidadMaximaJugadores).intValue());
    return _lessThan;
  }
  
  public Iterable<Inscripcion> armarListaCandidatos() {
    List<Inscripcion> _inscripciones = this.getInscripciones();
    final Function1<Inscripcion,Boolean> _function = new Function1<Inscripcion,Boolean>() {
      public Boolean apply(final Inscripcion inscripcion) {
        TipoInscripcion _tipoInscripcion = inscripcion.getTipoInscripcion();
        Boolean _sosEstandar = _tipoInscripcion.sosEstandar();
        return _sosEstandar;
      }
    };
    Iterable<Inscripcion> _filter = IterableExtensions.<Inscripcion>filter(_inscripciones, _function);
    List<Inscripcion> _inscripciones_1 = this.getInscripciones();
    final Function1<Inscripcion,Boolean> _function_1 = new Function1<Inscripcion,Boolean>() {
      public Boolean apply(final Inscripcion inscripcion) {
        TipoInscripcion _tipoInscripcion = inscripcion.getTipoInscripcion();
        Boolean _sosSolidaria = _tipoInscripcion.sosSolidaria();
        return _sosSolidaria;
      }
    };
    Iterable<Inscripcion> _filter_1 = IterableExtensions.<Inscripcion>filter(_inscripciones_1, _function_1);
    Iterable<Inscripcion> _plus = Iterables.<Inscripcion>concat(_filter, _filter_1);
    List<Inscripcion> _inscripciones_2 = this.getInscripciones();
    final Function1<Inscripcion,Boolean> _function_2 = new Function1<Inscripcion,Boolean>() {
      public Boolean apply(final Inscripcion inscripcion) {
        TipoInscripcion _tipoInscripcion = inscripcion.getTipoInscripcion();
        Boolean _sosCondicional = _tipoInscripcion.sosCondicional();
        return _sosCondicional;
      }
    };
    Iterable<Inscripcion> _filter_2 = IterableExtensions.<Inscripcion>filter(_inscripciones_2, _function_2);
    Iterable<Inscripcion> _plus_1 = Iterables.<Inscripcion>concat(_plus, _filter_2);
    Iterable<Inscripcion> _take = IterableExtensions.<Inscripcion>take(_plus_1, 10);
    return _take;
  }
}
