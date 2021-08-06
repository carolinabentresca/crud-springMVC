/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author EXO
 */
public class personal {
    private int id;
    private String nombre;
    private String apellido;
    private String email;
    private String actividad;

    public personal() {
    }

    public personal(String nombre, String apellido, String email, String actividad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.actividad = actividad;
    }

    public personal(int id, String nombre, String apellido, String email, String actividad) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.actividad = actividad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }
    
}
