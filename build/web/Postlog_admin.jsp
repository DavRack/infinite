<%-- 
    Document   : postlog_admin
    Created on : 21/05/2018, 01:24:54 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <br>
        <div class="container"><br><br><br>
            <h1>
                Bienvenido, <%out.println(models.user.get_active_user().get_nikname());%><br>
            </h1>
            <h5>
                Te has logeado como Administrador
            </h5><br>
            <h5>
                ¿Qué desea hacer a continuación?
            </h5>
            <br><br>
            Editar:
            <br><br>
            <a class="btn btn-secondary" href="#" id="titulo" role="button">Titulo</a>
            <a class="btn btn-secondary" href="#" id="precio" role="button">Precio</a>
            <a class="btn btn-secondary" href="#" id="descipcion" role="button">Descripción</a>
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo2">Eliminar</button>
            <form action='eliminar' method='post'>
                <div id="demo2" class="collapse"><br>
                    <input type="text" name="name" class="form-control" placeholder="Introduzca el nombre del juego" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Eliminar</button>
                </div>
            </form>
            <br><br>
            
            Comentarios:
            <br><br>
            <a class="btn btn-secondary" href="#" id="ver_comentario" role="button">Ver comentarios</a>
            <a class="btn btn-secondary" href="#" id="eliminar_comentario" role="button">Eliminar comentario </a>
            
        </div>
    </body>
</html>
