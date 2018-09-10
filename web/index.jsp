<%-- 
    Document   : index
    Created on : 05-09-2018, 16:55:32
    Author     : EC0021
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type='text/javascript' src='/DirectWebRemoting/dwr/engine.js'></script>
        <script type='text/javascript' src='/DirectWebRemoting/dwr/interface/Controlador.js'></script>
        <script type='text/javascript' src='/DirectWebRemoting/dwr/util.js'></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        Num1 : <input type="text" name="num1" id="num1" value="" /><br>
        Num2 : <input type="text" name="num2" id="num2" value="" /><br>
        <button id="sumar">Sumar</button>
        <button id="getPersona">Obtener Persona</button>
        <button id="agregarPersona">Agregar Persona</button>
        <button id="listarPersonas">Listar Persona</button>
    </body>
    <script>
        $(document).ready(function () {
            $('#sumar').click(function () {
                var n1 = $('#num1').val();
                var n2 = $('#num2').val();
                Controlador.suma(n1, n2, function(data){
                    alert(data);
                });
            });
            $('#getPersona').click(function(){
                Controlador.obtenerPersona(function(persona){
                    console.log(persona);
                    alert(persona.nombre);
                });
            });
            $('#listarPersonas').click(function(){
                Controlador.listadoPersonas(function(data){
                    console.log(data);
                });
            });
            Controlador.doSomething({
                callback: function (data) {
//                    alert(data);
                }
            });
            $('#agregarPersona').click(function(){
                var persona = {
                    nombre:"Alejandro Arevelo Sanchez",
                    rut:"1-9",
                    edad:38
                };
                Controlador.agregarPersona(persona, function(data){
                    console.log(data);
                });
            });
            
        });
    </script>
</html>
