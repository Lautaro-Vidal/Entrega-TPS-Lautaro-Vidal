public abstract class Pieza {
    private String color;
    private int velocidad;
    private String tipoPieza;
    private String caracter;
    private String movimiento;
    private String comportamiento;

    public Pieza(String color, int velocidad, String tipoPieza, String caracter, String movimiento,
            String comportamiento) {
        this.color = color;
        this.velocidad = velocidad;
        this.tipoPieza = tipoPieza;
        this.caracter = caracter;
        this.movimiento = movimiento;
        this.comportamiento = comportamiento;
    }

    // Establecemos los Getters
    public String getColor() {
        return color;
    }

    public int getVelocidad() {
        return velocidad;
    }

    public String getTipoPieza() {
        return tipoPieza;
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

    // Establecemos los Setters
    public void setColor(String color) {
        this.color = color;
    }

    public void setVelocidad(int velocidad) {
        this.velocidad = velocidad;
    }

    public void setTipoPieza(String tipoPieza) {
        this.tipoPieza = tipoPieza;
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
