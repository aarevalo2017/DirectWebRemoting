/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author EC0021
 */
public class Persona {

    private int id;
    private String nombre;
    private String rut;
    private int edad;
    private static Persona instance;

    public static Persona getInstance() {
        if (instance == null) {
            Persona persona = new Persona();
            persona.setId(1);
            persona.setEdad(38);
            persona.setNombre("Alejandro Arevalo Sanchez");
            persona.setRut("13965092-1");
            return persona;
        }
        return instance;
    }

    public void setInstance(Persona instance) {
        this.instance = instance;
    }

    public Persona() {
    }

//    public Persona(int id, String nombre, String rut, int edad) {
//        this.id = id;
//        this.nombre = nombre;
//        this.rut = rut;
//        this.edad = edad;
//    }

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

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

}
