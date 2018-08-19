<%-- 
    Document   : index
    Created on : 26/03/2011, 09:13:10 AM
    Author     : ALUMNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona</title>
    </head>
    <body>
        <h1>Listado de Personas</h1>
        <a href="">Nueva Persona</a>
        <table border="1">
            <tr>
                <td>CODIGO</td>
                <td>DNI</td>
                <td>NOMBRE</td>
                <td>OPCIÓN</td>
            </tr>
            <tr>
                <td>P001</td>
                <td>11223344</td>
                <td>JUAN PEREZ</td>
                <td><a href="persona.htm?codigoPersona=P001&opcion=cursos">Listar Cursos</a></td>
            </tr>


        </table>


    </body>
</html>
