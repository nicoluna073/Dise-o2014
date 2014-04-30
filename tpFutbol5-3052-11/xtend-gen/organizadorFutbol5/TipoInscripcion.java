package organizadorFutbol5;

@SuppressWarnings("all")
public abstract class TipoInscripcion {
  public Boolean sosEstandar() {
    return Boolean.valueOf(false);
  }
  
  public Boolean sosSolidaria() {
    return Boolean.valueOf(false);
  }
  
  public Boolean sosCondicional() {
    return Boolean.valueOf(false);
  }
}
