<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 07-nov-2014, 13:01:36
    Author     : Ernesto Brenes C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
        <h1><title>Red Social GeTec</title></h1>
    </head>
    <body>
        <h1>Red Social GeTec</h1>
        <form name="ingresar al perfil">
            <h3>Ingrese a su perfil</h3><br/>
            Correo: <input type="email" placeholder="Formato: algo@dir.com"/><br/>
            Contraseña: <input type="password"/>
            <input type="submit" value="Aceptar"/>
        </form>
        <hr/>
        <form name="Registro" action="ServletController" method="get">
            <p><h3>Registrese</h3></p><br/>
            Nombre: <input type="text" name="nombre" /><br/>
            Correo: <input type="email" name="correo" placeholder="Formato: algo@dir.com"/><br/>
            Edad: <input type="number" name="edad" min="18" max="99" step="5"  required="required"><br/>
            Telefono: <input type="tel" name="telefono" pattern="[0-9]{8}" placeholder="Formato: 88765434"/><br/>
            Fecha de nacimiento: <input type="date" name="FNacimiento"/> <br/>
            <select name="carrera">
                <option selected="profesion">--- Seleccione su Carrera ---</option>
                <option>Administración de Empresas</option>
                <option>Administración de Tecnologías de Información</option>
                <option>Educación Técnica</option>
                <option>Enseñanza de la Matemática asistida por computadora</option>
                <option>Gestión en Turismo Sostenible</option>
                <option>Ingeniería Agrícola</option>
                <option>Ingeniería Agronegocios</option>
                <option>Ingeniería Ambiental</option>
                <option>Ingeniería en Biotecnología</option>
                <option>Ingeniería en Computación</option>
                <option>Ingeniería en Computadores</option>
                <option>Ingeniería en Construcción</option>
                <option>Ingeniería en Diseño Industrial</option>
                <option>Ingeniería en Electrónica</option>
                <option>Ingeniería en Mantenimiento Industrial</option>
                <option>Ingeniería en Materiales</option>
                <option>Ingeniería en Producción de Industrial</option>
                <option>Ingeniería en Seguridad Laboral e Higiene Ambiental</option>
                <option>Ingeniería Forestal</option>
                <option>Ingeniería Mecatrónica</option>            
            </select><br/>
            Ingrese una Contraseña: <input type="password" name="password"/><br/>
            Ingrese nuevamente la Contraseña:<input type="password"/><br/>
            Seleccione su Genero:<br/>
            <input type="checkbox" name="seleccion" value="Hombre" />Hombre<br/>
            <input type="checkbox" name="seleccion" value="Mujer" />Mujer<br/>
            <input type="submit" value="Aceptar" name="registrar" />
            <input type="reset" value="Borrar" name="Borrar" />
            
        </form>
    </body>
</html>
