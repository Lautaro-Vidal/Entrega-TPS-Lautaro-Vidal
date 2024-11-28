import java.sql.*;

public class PiezaDAO implements iPiezaDAO {

    public void imprimirListadoPiezas() {
        String query = "SELECT * FROM pieza limit 32"; // Asegúrate de que no haya LIMIT en la consulta
        try (Connection con = new AccesoDatos().getConexion();
                PreparedStatement pstmt = con.prepareStatement(query);
                ResultSet rs = pstmt.executeQuery()) {

            // Recorre todos los resultados
            while (rs.next()) {
                int idPieza = rs.getInt("idPieza");
                // String nombre = rs.getString("nombre");
                String descripcion = rs.getString("Descripcion");
                int idColor = rs.getInt("idColor");
                int idTipoPieza = rs.getInt("idTipoPieza");

                // Obtener la fecha de creación, si está disponible
                Date fechaCreacion = rs.getDate("Fecha_Creacion");
                if (fechaCreacion != null) {
                    System.out.println("Fecha de creación: " + fechaCreacion.toString());
                } else {
                    System.out.println("Fecha de creación: No disponible");
                }

                // Imprime los valores de la pieza
                System.out.println("ID Pieza: " + idPieza);
                // System.out.println("Nombre: " + nombre);
                System.out.println("Descripción: " + descripcion);
                System.out.println("ID Color: " + idColor);
                System.out.println("ID Tipo Pieza: " + idTipoPieza);
                System.out.println("------------------------------");
            }

        } catch (SQLException e) {
            System.err.println("Error al imprimir el listado de piezas");
            e.printStackTrace();
        }
    }

    @Override
    public void insertarPieza(Pieza pieza) {

        if (pieza == null) {
            System.err.println("La pieza es nula.");
            return; // Salir si la pieza no es válida
        }

        int idColor = pieza.getIdColor();

        // Consulta SQL con la nueva columna Velocidad
        String query = "INSERT INTO pieza (idColor, idTipoPieza, Movimiento, Comportamiento) "
                + "VALUES (?, ?, ?, ?)";

        try (Connection con = new AccesoDatos().getConexion();
                PreparedStatement pstmt = con.prepareStatement(query)) {

            // Establecer los parámetros en la consulta SQL
            pstmt.setInt(1, idColor); // idColor
            pstmt.setInt(2, pieza.getIdTipoPieza()); // idTipoPieza
            pstmt.setString(3, pieza.getMovimiento()); // Movimiento
            pstmt.setString(4, pieza.getComportamiento()); // Comportamiento
            // pstmt.setString(5, pieza.getClass().getSimpleName()); // Nombre de la pieza
            // (subclase)

            // Ejecutar la inserción en la base de datos
            pstmt.executeUpdate();
            System.out.println("Pieza insertada exitosamente.");

        } catch (SQLException e) {
            System.err.println("Error al insertar la pieza");
            e.printStackTrace();
        }
    }

    @Override
    public void eliminarPieza(int id) {
        // Eliminar todas las piezas
        String query = "DELETE FROM pieza";

        try (Connection con = new AccesoDatos().getConexion();
                PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.executeUpdate();
            System.out.println("Todas las piezas han sido eliminadas exitosamente.");

        } catch (SQLException e) {
            System.err.println("Error al eliminar las piezas");
            e.printStackTrace();
        }
    }
}
