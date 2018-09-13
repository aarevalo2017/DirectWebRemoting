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
    <script type='text/javascript' src="${pageContext.servletContext.contextPath}/dwr/engine.js"></script>
    <script type='text/javascript' src="${pageContext.servletContext.contextPath}/dwr/interface/Controlador.js"></script>
    <script type='text/javascript' src="${pageContext.servletContext.contextPath}/dwr/util.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
      <br>
      Num1<br><input type="text" name="num1" id="num1" value="" /><br>
      Num2<br><input type="text" name="num2" id="num2" value="" /><br><br/>
      <button id="sumar" class="btn btn-primary">Sumar</button>
      <hr/>
      <!--<form>-->
      Nombre<br><input type="text" name="nombre" id="nombre" required/><br/>
      Rut<br><input type="text" name="rut" id="rut" required/><br/>
      Edad<br><input type="number" name="edad" id="edad" required/><br/><br/>
      <button id="agregarPersona" class="btn btn-primary">Agregar Persona</button>
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
            <th>Vehículo</th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>
      <button id="getPersona" class="btn btn-primary">Obtener Persona</button>
      <button id="listarPersonas" class="btn btn-primary">Listar Persona</button>
    </div>
    <script type="text/javascript">
      $(document).ready(function () {
        function cargaPersonas() {
          Controlador.listadoPersonas(function (data) {
            console.log(data);
            var tbody = "";
            $.each(data, function (i) {
              tbody += "<tr>";
              tbody += "<td>" + data[i].id + "</td>";
              tbody += "<td>" + data[i].nombre + "</td>";
              tbody += "<td>" + data[i].rut + "</td>";
              tbody += "<td>" + data[i].edad + "</td>";
              tbody += "<td><a href='verauto.jsp?id=" + data[i].id + "'>Ver Persona</a></td>";
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
          cargaPersonas();
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
  </body>
</html>
