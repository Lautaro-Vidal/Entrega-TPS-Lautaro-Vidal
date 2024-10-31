public class Furgoneta extends Vehiculo_de_carga {
    private Menu menu; // Instancia de Menu

    public Furgoneta(Menu menu) {
        super(4); // Peso máximo autorizado
        this.menu = menu; // Asigna la instancia de Menu
    }

    @Override
    protected double calcularCargoAdicional() {
        return getCargoAdicionalxPMA() * getPesoMaximoAutorizado();
    }

    @Override
    protected double getdiasDeAlquiler() {
        return menu.getDiasDeAlquiler();
    }
}
