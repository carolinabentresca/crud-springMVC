<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CrudSpringMVC</title>
    </head>

    <body style="background: #000000;color: #ff0099;font-family: cursive;font-size: 200%;font-style: initial">
        <a href="agregar.htm" style="background: #ffffff;color: #990099">NUEVO REGISTRO</a> 
        <br/>
        <center>  
            <br/>
            <br/> 
            <table border="1"  style="background: #ffffff">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>EMAIL</th>
                        <th>ACTIVIDAD</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${lista}">
                        <tr>
                            <td>${dato.id}</td>
                            <td>${dato.nombre}</td>
                            <td>${dato.apellido}</td>
                            <td>${dato.email}</td>
                            <td>${dato.actividad}</td>
                            <td>
                                <a href="editar.htm?id=${dato.id}" style="color: #00cccc">EDITAR</a>
                                <a href="eliminar.htm?id=${dato.id}" style="color: #00ff00">ELIMINAR</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </center>
    </body>
</html>
