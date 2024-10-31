public class Minivan extends Vehiculo_de_pasajeros {
    private static final double cargoAdicionalMinivan = 120;
    private Menu menu; // Referencia a la clase Menu

    public Minivan(Menu menu) {
        super(16); // Inicializar el atributo cantidad
        this.menu = menu; // Inicializa la referencia al menú
    }

    public double getcargoAdicionalMinivan() {
        return cargoAdicionalMinivan;
    }

    @Override
    public double calcularCargoAdicional() {
        return getcargoAdicionalMinivan() * getcantidadDePlazas() + 100 * getdiasDeAlquiler();
    }

    @Override
    protected double getdiasDeAlquiler() {
        return menu.getDiasDeAlquiler(); // Obtiene los días de alquiler del menú
    }
}
