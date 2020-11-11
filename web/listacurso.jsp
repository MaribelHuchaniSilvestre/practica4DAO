<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Curso </h1>
        <p><a href="IniCurso?actioncurso=add">Nuevo</a></p>
        <table border="2">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${curso}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td><a href="IniCurso?actioncurso=edit&id=${item.id}">Editar</a></td>
                    <td><a href="IniCurso?actioncurso=delete&id=${item.id}" onclick="return(confirm('Estas Seguro de modificar el dato??'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
        <p><a href="index.jsp">Volver</a></p>
    </body>
</html>
