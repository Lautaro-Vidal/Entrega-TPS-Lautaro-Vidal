public class Auto extends Vehiculo_de_pasajeros {
    private static final double cargoAdicionalAuto = 100;
    private Menu menu; // Referencia a la instancia de Menu

    public Auto(Menu menu) {
        super(5);
        this.menu = menu; // Guarda referencia
    }

    public double getCargoAdicionalAuto() {
        return cargoAdicionalAuto;
    }

    @Override
    public double calcularCargoAdicional() {
        return getCargoAdicionalAuto() * (getcantidadDePlazas() + menu.getDiasDeAlquiler()); // Usar días del menú
    }

    @Override
    protected double getdiasDeAlquiler() {
        return menu.getDiasDeAlquiler(); // Devuelve días del menú
    }
}
