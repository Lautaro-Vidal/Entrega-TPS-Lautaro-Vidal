import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        // Instanciar el objeto PiezaDAO que implementa iPiezaDAO
        iPiezaDAO piezaDAO = new PiezaDAO();

        // Crear una instancia de Piezas
        Pieza reina = new Reina(1, 1); // Aquí 1 y 7 son IDs de ejemplo para color y tipo de pieza respectivamente
        Pieza rey = new Rey(1, 2);
        Pieza torre = new Torre(1, 3);
        Pieza caballo = new Caballo(1, 5);
        Pieza alfil = new Alfil(1, 4);
        Pieza peon = new Peon(1, 6);
        // Negras
        Pieza reinaNegra = new Reina(2, 1); // Aquí 1 y 7 son IDs de ejemplo para color y tipo de pieza respectivamente
        Pieza reyNegra = new Rey(2, 2);
        Pieza torreNegra = new Torre(2, 3);
        Pieza caballoNegra = new Caballo(2, 5);
        Pieza alfilNegra = new Alfil(2, 4);
        Pieza peonNegra = new Peon(2, 6);

        // Menú de opciones
        while (true) {
            System.out.println("\nMenú de Opciones:");
            System.out.println("1. Imprimir listado de piezas");
            System.out.println("2. Insertar la pieza Reina");
            System.out.println("3. Eliminar todas las piezas");
            System.out.println("4. Salir");

            // Leer la opción del usuario
            System.out.print("Selecciona una opción (1-4): ");
            int opcion = scanner.nextInt();
            scanner.nextLine(); // Limpiar el buffer

            switch (opcion) {
                case 1:
                    // Imprimir listado de piezas
                    piezaDAO.imprimirListadoPiezas();
                    break;

                case 2:
                    // Insertar las Piezas Blancas
                    piezaDAO.insertarPieza(reina);
                    piezaDAO.insertarPieza(rey);
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(torre);
                    }
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(caballo);
                    }
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(alfil);
                    }
                    for (int i = 1; i <= 8; i++) {
                        piezaDAO.insertarPieza(peon);
                    }

                    // Insertar las piezas Negras
                    piezaDAO.insertarPieza(reinaNegra);
                    piezaDAO.insertarPieza(reyNegra);
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(torreNegra);
                    }
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(caballoNegra);
                    }
                    for (int i = 1; i <= 2; i++) {
                        piezaDAO.insertarPieza(alfilNegra);
                    }
                    for (int i = 1; i <= 8; i++) {
                        piezaDAO.insertarPieza(peonNegra);
                    }

                    System.out.println("Piezas insertadas en la base de datos.");
                    break;

                case 3:
                    // Eliminar todas las piezas
                    piezaDAO.eliminarPieza(0); // No se usa el id, ya que elimina todas las piezas
                    break;

                case 4:
                    // Salir del programa
                    System.out.println("Saliendo del programa...");
                    scanner.close();
                    System.exit(0); // Termina la ejecución del programa

                default:
                    System.out.println("Opción no válida. Por favor, elige una opción entre 1 y 4.");
            }
        }

    }
}
