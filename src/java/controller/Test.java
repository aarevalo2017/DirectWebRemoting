/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author ec0021
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Auto a = new Auto();
        a.setMarca("nissan");
        Auto b = new Auto();
        b.setMarca("honda");
        Auto.autos.add(a);
        Auto.autos.add(b);
        Auto.autos.forEach(auto -> {
            System.out.println(auto.getMarca());
        });
    }
    
}
