public abstract class Pieza {
    private int idColor; // Ahora es un entero
    private int idTipoPieza; // Ahora es un entero
    private String caracter;
    private String movimiento;
    private String comportamiento;

    // Constructor modificado para aceptar idColor e idTipoPieza
    public Pieza(int idColor, int idTipoPieza, String caracter, String movimiento,
            String comportamiento) {
        this.idColor = idColor;
        this.idTipoPieza = idTipoPieza;
        this.caracter = caracter;
        this.movimiento = movimiento;
        this.comportamiento = comportamiento;
    }

    // Getters
    public int getIdColor() {
        return idColor;
    }

    public int getIdTipoPieza() {
        return idTipoPieza;
    }

    public String getCaracter() {
        return caracter;
    }

    public String getMovimiento() {
        return movimiento;
    }

    public String getComportamiento() {
        return comportamiento;
    }

    // Setters
    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public void setIdTipoPieza(int idTipoPieza) {
        this.idTipoPieza = idTipoPieza;
    }

    public void setCaracter(String caracter) {
        this.caracter = caracter;
    }

    public void setMovimiento(String movimiento) {
        this.movimiento = movimiento;
    }

    public void setComportamiento(String comportamiento) {
        this.comportamiento = comportamiento;
    }
}
