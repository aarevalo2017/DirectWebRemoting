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
  private Auto auto;

  public Persona() {
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

  public Auto getAuto() {
    return auto;
  }

  public void setAuto(Auto auto) {
    this.auto = auto;
  }

}
