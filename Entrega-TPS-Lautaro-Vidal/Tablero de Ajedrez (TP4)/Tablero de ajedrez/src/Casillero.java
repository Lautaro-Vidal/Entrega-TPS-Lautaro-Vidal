public class Casillero {
    private int fila; // Fila del casillero
    private int columna; // Columna del casillero
    private Pieza pieza; // Pieza que ocupa el casillero

    public Casillero(int fila, int columna) {
        this.fila = fila;
        this.columna = columna;
        this.pieza = null; // Inicialmente vacío
    }

    // Establecemos los Getters
    public int getFila() {
        return fila;
    }

    public int getColumna() {
        return columna;
    }

    public Pieza getPieza() {
        return pieza;
    }

    // Establecemos los Setters
    public void setPieza(Pieza pieza) {
        this.pieza = pieza;
    }
}
