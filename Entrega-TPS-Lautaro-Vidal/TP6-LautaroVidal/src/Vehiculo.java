public abstract class Vehiculo {
    private final double precioBase; // Precio base por día es fijo

    public Vehiculo() {
        this.precioBase = 2000; // Establece precio base por día
    }

    public double getPrecioBase() {
        return precioBase;
    }

    public double calcularPrecio() {
        double precioBasePorDias = getPrecioBase() * getdiasDeAlquiler();
        double precioTotal = precioBasePorDias + calcularCargoAdicional();
        return precioTotal;
    }

    protected abstract double getdiasDeAlquiler();

    protected abstract double calcularCargoAdicional();
}
