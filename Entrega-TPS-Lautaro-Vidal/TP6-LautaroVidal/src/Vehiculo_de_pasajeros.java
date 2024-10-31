public abstract class Vehiculo_de_pasajeros extends Vehiculo {
    protected int cantidadDePlazas;

    public Vehiculo_de_pasajeros(int cantidadDePlazas) {
        this.cantidadDePlazas = cantidadDePlazas;
    }

    public int getcantidadDePlazas() {
        return cantidadDePlazas;
    }
}
