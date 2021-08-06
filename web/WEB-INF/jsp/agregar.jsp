<%-- 
    Document   : agregar
    Created on : 09/06/2021, 18:52:41
    Author     : EXO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <body style="background: #000000;color: #ff0099;font-family: cursive;font-size: 180%;font-style: initial">
        <h3 style="background: #ffffff;color: #990099">NUEVO REGISTRO</h3>   
    <center>
        <form method="POST">
            <label>Id</label><br/>
            <input type="text" name="id" placeholder=" " required="required"  style="font-size: 100%"/>
            <br/>
            <label>Nombre</label><br/>
            <input type="text" name="nombre" placeholder=" " required="required"  style="font-size: 100%"/> 
            <br/>
            <label>Apellido</label><br/>
            <input type="text" name="apellido" placeholder=" " required="required" style="font-size: 100%"/> 
            <br/>
            <label>Email</label><br/>
            <input type="email" name="email" placeholder=" " required="required" style="font-size: 100%"/>
            <br/>
            <label>Actividad</label><br/>
            <input type="text" name="actividad" placeholder=" " required="required"  style="font-size: 100%"/>
            <br/>
            <br/>
            <input type="submit" value="Insertar" style="background: #ffffff;color: #ff0099;font-family: cursive;font-size: 120%" />
            <a href="index.htm" style="color: #00ff00;font-size: 120%">Regresar</a>
        </form>
    </center>
</body>
</html>
