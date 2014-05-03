package organizadorFutbol5;

import org.eclipse.xtext.xbase.lib.Functions.Function1;
import organizadorFutbol5.Partido;
import organizadorFutbol5.TipoInscripcion;

@SuppressWarnings("all")
public class Condicional extends TipoInscripcion {
  public String queTipoSos() {
    return "Condicional";
  }
  
  private Function1<? super Partido,? extends Boolean> condicion;
  
  public Condicional() {
  }
  
  public Condicional(final Function1<? super Partido,? extends Boolean> condicion) {
    this.condicion = condicion;
  }
  
  public boolean cumpleCondicion(final Partido partido) {
    return (this.condicion.apply(partido)).booleanValue();
  }
}
