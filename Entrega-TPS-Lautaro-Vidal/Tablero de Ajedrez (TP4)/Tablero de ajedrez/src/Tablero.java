public class Tablero {
    private Casillero[][] casillas;

    public Tablero() {
        casillas = new Casillero[8][8]; // Tablero de 8x8
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                casillas[i][j] = new Casillero(i, j); // Inicializamos cada casillero
            }
        }
    }

    public Casillero[][] getCasillas() {
        return casillas;
    }
}
