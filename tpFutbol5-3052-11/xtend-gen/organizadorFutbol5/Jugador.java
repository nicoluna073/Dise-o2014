package organizadorFutbol5;

@SuppressWarnings("all")
public class Jugador {
  private String _nombre;
  
  public String getNombre() {
    return this._nombre;
  }
  
  public void setNombre(final String nombre) {
    this._nombre = nombre;
  }
  
  private Integer _edad;
  
  public Integer getEdad() {
    return this._edad;
  }
  
  public void setEdad(final Integer edad) {
    this._edad = edad;
  }
  
  private Integer _penalizado;
  
  public Integer getPenalizado() {
    return this._penalizado;
  }
  
  public void setPenalizado(final Integer penalizado) {
    this._penalizado = penalizado;
  }
  
  public Jugador(final String nombre, final Integer edad) {
    this.setNombre(nombre);
    this.setEdad(edad);
    this.setPenalizado(Integer.valueOf(0));
  }
  
  public Boolean estaPenalizado() {
    boolean _xifexpression = false;
    Integer _penalizado = this.getPenalizado();
    boolean _lessThan = ((_penalizado).intValue() < 0);
    if (_lessThan) {
      _xifexpression = true;
    } else {
      _xifexpression = false;
    }
    return Boolean.valueOf(_xifexpression);
  }
}
