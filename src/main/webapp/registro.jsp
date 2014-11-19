<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<%-- 
    Document   : perfil.jsp
    Created on : 07-nov-2014, 13:53:22
    Author     : Ernesto Brenes C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <h1>Bienvenido</h1><br/>
          
        <jsp:useBean id="Nodo" scope="request" class="com.grafo.Nodo" />
        Nombre: <jsp:getProperty name="Nodo" property="nombre"/><br/>
        Correo: <jsp:getProperty name="Nodo" property="correo"/><br/>
        Fecha de Nacimiento: <jsp:getProperty name="Nodo" property="fechaN" /><br/>
        Edad: <jsp:getProperty name="Nodo" property="edad" /><br/>
        Carrera: <jsp:getProperty name="Nodo" property="carrera" /><br/>
        Telefono: <jsp:getProperty name="Nodo" property="telefono" /><br/>
    </body>
</html>
 