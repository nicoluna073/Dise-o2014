package organizadorFutbol5;

import com.google.common.base.Objects;
import organizadorFutbol5.Partido;

@SuppressWarnings("all")
public abstract class TipoInscripcion {
  private final String tipo = "TipoInscripcion";
  
  public boolean confirmate(final String tipo, final Partido partido) {
    return Objects.equal(this.tipo, tipo);
  }
}
