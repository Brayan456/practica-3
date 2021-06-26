package uni.edu.pe.farma.dto;

public class Producto {
    private String nombre;
    private String descripcion;
    private float precio;
    private int stock;
    private String id_categoria;

    public Producto(String nombre, String descripcion, float precio, int stock, String id_categoria) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.stock = stock;
        this.id_categoria = id_categoria;
    }

}
