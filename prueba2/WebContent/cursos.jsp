<%-- 
    Document   : index
    Created on : 26/03/2011, 09:13:10 AM
    Author     : ALUMNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
    </head>
    <body>
        
	<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1">
	    <tr >
	        <td >Código</td>
	        <td >Descripción</td>
	    </tr>
	
	    <c:forEach items="${listaCursos}" var="item" varStatus="status">
	        <tr >
	            <td align="left" ><c:out value="${item.codigo}"/></td>
	            <td align="left" ><c:out value="${item.descripcion}"/></td>
	        </tr>
	
	    </c:forEach>
	</table> 

	<br/>
	<br/>
	<a href="index.jsp">Volver</a>

    </body>
</html>
