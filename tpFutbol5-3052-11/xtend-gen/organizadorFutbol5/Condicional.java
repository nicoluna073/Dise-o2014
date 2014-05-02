package organizadorFutbol5;

import com.google.common.base.Objects;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import organizadorFutbol5.Partido;
import organizadorFutbol5.TipoInscripcion;

@SuppressWarnings("all")
public class Condicional extends TipoInscripcion {
  private final String tipo = "Condicional";
  
  private Function1<? super Partido,? extends Boolean> condicion;
  
  public Condicional() {
  }
  
  public Condicional(final Function1<? super Partido,? extends Boolean> condicion) {
    this.condicion = condicion;
  }
  
  public boolean cumpleCondicion(final Partido partido) {
    return (this.condicion.apply(partido)).booleanValue();
  }
  
  public boolean confirmate(final String tipo, final Partido partido) {
    boolean _and = false;
    boolean _equals = Objects.equal(tipo, this.tipo);
    if (!_equals) {
      _and = false;
    } else {
      boolean _cumpleCondicion = this.cumpleCondicion(partido);
      _and = _cumpleCondicion;
    }
    return _and;
  }
}
