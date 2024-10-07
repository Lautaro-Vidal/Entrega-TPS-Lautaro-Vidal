public class Main {
    public static void main(String[] args) {
        Tablero tablero = new Tablero();

        // Inicializamos piezas blancas
        inicializarPiezasBlancas(tablero);

        // Inicializamos piezas negras
        inicializarPiezasNegras(tablero);

        // Imprime la información de las piezas
        imprimirPiezas(tablero);

        // Imprimimos el tablero
        System.out.println("\nTablero:");
        imprimirTablero(tablero);
    }

    private static void inicializarPiezasBlancas(Tablero tablero) {
        tablero.getCasillas()[0][0].setPieza(new Torre("Blanco"));
        tablero.getCasillas()[0][1].setPieza(new Caballo("Blanco"));
        tablero.getCasillas()[0][2].setPieza(new Alfil("Blanco"));
        tablero.getCasillas()[0][3].setPieza(new Reina("Blanco"));
        tablero.getCasillas()[0][4].setPieza(new Rey("Blanco"));
        tablero.getCasillas()[0][5].setPieza(new Alfil("Blanco"));
        tablero.getCasillas()[0][6].setPieza(new Caballo("Blanco"));
        tablero.getCasillas()[0][7].setPieza(new Torre("Blanco"));

        for (int i = 0; i < 8; i++) {
            tablero.getCasillas()[1][i].setPieza(new Peón("Blanco"));
        }
    }

    private static void inicializarPiezasNegras(Tablero tablero) {
        tablero.getCasillas()[7][0].setPieza(new Torre("Negro"));
        tablero.getCasillas()[7][1].setPieza(new Caballo("Negro"));
        tablero.getCasillas()[7][2].setPieza(new Alfil("Negro"));
        tablero.getCasillas()[7][3].setPieza(new Reina("Negro"));
        tablero.getCasillas()[7][4].setPieza(new Rey("Negro"));
        tablero.getCasillas()[7][5].setPieza(new Alfil("Negro"));
        tablero.getCasillas()[7][6].setPieza(new Caballo("Negro"));
        tablero.getCasillas()[7][7].setPieza(new Torre("Negro"));

        for (int i = 0; i < 8; i++) {
            tablero.getCasillas()[6][i].setPieza(new Peón("Negro"));
        }
    }

    private static void imprimirPiezas(Tablero tablero) {
        System.out.println("Lista de piezas:");
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                Casillero casillero = tablero.getCasillas()[i][j];
                if (casillero.getPieza() != null) {  // Verificacion 
                    Pieza pieza = casillero.getPieza();
                    System.out.println(pieza.getTipoPieza() + ":");
                    System.out.println("  Color: " + pieza.getColor());
                    System.out.println("  Caracter: " + pieza.getCaracter());
                    System.out.println("  Velocidad: " + pieza.getVelocidad());
                    System.out.println("  Movimiento: " + pieza.getMovimiento());
                    System.out.println();
                }
            }
        }
    }

    private static void imprimirTablero(Tablero tablero) {
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                Casillero casillero = tablero.getCasillas()[i][j];
                if (casillero.getPieza() != null) { // Verificamos si hay una pieza ocupando ese casillero 
                    System.out.print(casillero.getPieza().getTipoPieza() + " ");
                } else {
                    System.out.print(" .     "); // Representación de casillero vacío
                }
            }
            System.out.println();
        }
    }
}
