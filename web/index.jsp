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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">

            Num1<br><input type="text" name="num1" id="num1" value="" /><br>
            Num2<br><input type="text" name="num2" id="num2" value="" /><br>
            <button id="sumar">Sumar</button>
            <hr/>
            <!--<form>-->
                Nombre<br><input type="text" name="nombre" id="nombre" required/><br/>
                Rut<br><input type="text" name="rut" id="rut" required/><br/>
                Edad<br><input type="number" name="edad" id="edad" required/><br/>
                <button id="agregarPersona">Agregar Persona</button>
            <!--</form>-->
            <hr/>
            <h3>Listado Personas</h3><br>
            <table class="table table-bordered"  id="tblPersonas">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Rut</th>
                        <th>Edad</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
            <button id="getPersona">Obtener Persona</button>
            <button id="listarPersonas">Listar Persona</button>
        </div>
    </body>
    <script>
        $(document).ready(function () {
            function cargaPersonas() {
                Controlador.listadoPersonas(function (data) {
                    console.log(data.length);
                    var tbody = "";
                    $.each(data, function (i) {
                        tbody += "<tr>";
                        tbody += "<td>" + data[i].id + "</td>";
                        tbody += "<td>" + data[i].nombre + "</td>";
                        tbody += "<td>" + data[i].rut + "</td>";
                        tbody += "<td>" + data[i].edad + "</td>";
                        tbody += "</tr>";
                    });
                    $('#tblPersonas tbody').html(tbody);
                });
            }
            $('#sumar').click(function () {
                var n1 = $('#num1').val();
                var n2 = $('#num2').val();
                Controlador.suma(n1, n2, function (data) {
                    alert(data);
                });
            });

            $('#getPersona').click(function () {
                Controlador.obtenerPersona(function (persona) {
                    console.log(persona);
                    alert(persona.nombre);
                });
            });

            $('#listarPersonas').click(function () {
                Controlador.listadoPersonas(function (data) {
                    console.log(data.length);
                    var tbody = "";
                    $.each(data, function (i) {
                        tbody += "<tr>";
                        tbody += "<td>" + data[i].nombre + "</td>";
                        tbody += "<td>" + data[i].rut + "</td>";
                        tbody += "<td>" + data[i].edad + "</td>";
                        tbody += "</tr>";
                    });
                    $('#tblPersonas tbody').html(tbody);
                });
            });

            Controlador.doSomething({
                callback: function (data) {
//                    alert(data);
                }
            });

            $('#agregarPersona').click(function () {
                var persona = {
                    nombre: $('#nombre').val(),
                    rut: $('#rut').val(),
                    edad: $('#edad').val()
                };
                Controlador.agregarPersona(persona, function (data) {
                    console.log(data);
                    cargaPersonas();
                });
            });
            cargaPersonas();
        });
    </script>
</html>
