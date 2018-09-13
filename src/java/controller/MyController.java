/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.List;

public class MyController {
  
  List<Persona> personas = new ArrayList();

  /**
   *
   * @return
   */
  public String doSomething() {
    return "Hola Mundo";
  }

  /**
   *
   * @param a
   * @param b
   * @return
   */
  public int suma(int a, int b) {
    return a + b;
  }

  /**
   *
   * @return
   */
  public Persona obtenerPersona(int id) {
    for (Persona persona : PersonaDAO.listado) {
      if (persona.getId() == id) {
        return persona;
      }
    }
    return null;
  }

  /**
   *
   * @return
   */
  public List<Persona> listadoPersonas() {
    return PersonaDAO.listado;
  }

//    public List<Persona> listadoPersonas(){
//        List<Persona> personas = new ArrayList<>();
//        personas.add(new Persona(1, "Alejandro", "11", 11));
//        personas.add(new Persona(2, "Juan", "12", 12));
//        personas.add(new Persona(3, "Pedro", "12", 13));
//        personas.add(new Persona(4, "Jordan", "12", 13));
//        return personas;
//    }
  /**
   *
   * @param persona
   * @return
   */
  public boolean agregarPersona(Persona persona) {
    Auto a = new Auto();
    a.setId(1);
    a.setMarca("Mitsubishi");
    a.setModelo("Lancer R/T 1.6");
    persona.setAuto(a);
    persona.setId(PersonaDAO.listado.size());
    return PersonaDAO.listado.add(persona);
  }

  /**
   *
   * @param auto
   * @return
   */
  public String agregarAuto(Auto auto) {
    return auto.getMarca();
  }

//    public Auto getAuto(){
//        return new Auto("Mitsubishi");
//    }
}
