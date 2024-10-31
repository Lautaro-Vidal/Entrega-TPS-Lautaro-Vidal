public class Camion extends Vehiculo_de_carga {
    private static final double cargoAdicionalCamion = 1600;
    private Menu menu; // Instancia de Menu

    public Camion(Menu menu) {
        super(15); // Peso máximo autorizado
        this.menu = menu; // Asigna la instancia de Menu
    }

    public double getCargaAdicionalCamion() {
        return cargoAdicionalCamion;
    }

    @Override
    protected double calcularCargoAdicional() {
        return getCargaAdicionalCamion() + (getCargoAdicionalxPMA() * getPesoMaximoAutorizado());
    }

    @Override
    protected double getdiasDeAlquiler() {
        return menu.getDiasDeAlquiler(); 
    }
}
