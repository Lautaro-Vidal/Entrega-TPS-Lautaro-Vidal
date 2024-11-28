public interface iPiezaDAO {

    // Método para imprimir el listado de piezas
    public abstract void imprimirListadoPiezas();

    // Método para insertar una nueva pieza
    public abstract void insertarPieza(Pieza pieza);

    // Método para eliminar una pieza por su ID
    public abstract void eliminarPieza(int id);
}
