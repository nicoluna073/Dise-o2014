package organizadorFutbol5;

import organizadorFutbol5.Jugador;
import organizadorFutbol5.TipoInscripcion;

@SuppressWarnings("all")
public class Inscripcion {
  private TipoInscripcion _tipoInscripcion;
  
  public TipoInscripcion getTipoInscripcion() {
    return this._tipoInscripcion;
  }
  
  public void setTipoInscripcion(final TipoInscripcion tipoInscripcion) {
    this._tipoInscripcion = tipoInscripcion;
  }
  
  private Jugador _jugador;
  
  public Jugador getJugador() {
    return this._jugador;
  }
  
  public void setJugador(final Jugador jugador) {
    this._jugador = jugador;
  }
  
  public Inscripcion(final Jugador jugadorAinscribir, final TipoInscripcion tipo) {
    this.setTipoInscripcion(tipo);
    this.setJugador(jugadorAinscribir);
  }
}
