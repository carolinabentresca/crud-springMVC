<%-- 
    Document   : editar
    Created on : 09/06/2021, 18:53:01
    Author     : EXO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body style="background: #000000;color: #ff0099;font-family: cursive;font-size: 180%;font-style: initial ">
        <h3 style="background: #ffffff;color: #990099">EDITAR REGISTRO</h3>    
    <center>
        <form method="POST">
            <label>Nombre</label><br/>
            <input type="text" name="nombre" value="${lista[0].nombre}" style="font-size: 100%" />
            <br/>
            <label>Apellido</label><br/>
            <input type="text" name="apellido" value="${lista[0].apellido}"  style="font-size: 100%"/>
            <br/>
            <label>Email</label><br/>
            <input type="email" name="email" value="${lista[0].email}"  style="font-size: 100%"/>
            <br/>
            <label>Actividad</label><br/>
            <input type="text" name="actividad" value="${lista[0].actividad}" style="font-size: 100%" />
            <br/>
            <br/>
            <input type="submit" value="Editar"  style="background: #ffffff;color: #ff0099;font-family: cursive;font-size: 120%" />
            <a href="index.htm" style="color: #00ff00;font-size: 120%">Regresar</a>
        </form>
    </center>
</body>
</html>
