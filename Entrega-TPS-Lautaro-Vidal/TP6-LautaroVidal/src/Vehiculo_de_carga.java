public abstract class Vehiculo_de_carga extends Vehiculo {
    private double pesoMaximoAutorizado;
    private final double cargoAdicionalxPMA = 800; // Valor fijo

    public Vehiculo_de_carga(double pesoMaximoAutorizado) {
        this.pesoMaximoAutorizado = pesoMaximoAutorizado;
    }

    public double getPesoMaximoAutorizado() {
        return pesoMaximoAutorizado;
    }

    public double getCargoAdicionalxPMA() {
        return cargoAdicionalxPMA;
    }
}
