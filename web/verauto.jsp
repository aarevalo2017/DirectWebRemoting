<%-- 
    Document   : verauto
    Created on : 12-09-2018, 23:43:17
    Author     : Alejandro
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
    <h2 id="nombre"></h2>
    <h3 id="rut"></h3>
    <h3 id="edad"></h3>
    <h2>Automovil</h2>
    <h3 id="marca"></h3>
    <h3 id="modelo"></h3>
    <script type="text/javascript">
      $(document).ready(function () {
        Controlador.obtenerPersona(${param.id}, function (persona) {
          console.log(persona);
          $('#nombre').html(persona.nombre);
          $('#rut').html(persona.rut);
          $('#edad').html(persona.edad);
          $('#marca').html(persona.auto.marca);
          $('#modelo').html(persona.auto.modelo);
        });
      });
    </script>
  </body>
</html>
