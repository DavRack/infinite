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
        <div class="container">
            <br><br><br>
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

            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo3">Titulo</button>
            <form action='edit_title' method='post'>
                <div id="demo3" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required>
                    <input type="text" name="change_nombre" class="form-control" placeholder="Introduzca el nuevo nombre del producto" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                </div>
            </form>
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo4">Precio</button>
            <form action='edit_price' method='post'>
                <div id="demo4" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required>
                    <input type="number" name="change_precio" class="form-control" placeholder="Introduzca el nuevo precio" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                </div>
            </form>
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo5">Descripción</button>
            <form action='edit_description' method='post'>
                <div id="demo5" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required>
                    <input type="text" name="change_descripcion" class="form-control" placeholder="Introduzca la nueva descripción" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                </div>
            </form>

            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo2">Eliminar</button>
            <form action='eliminar' method='post'>
                <div id="demo2" class="collapse"><br>
                    <input type="text" name="juego" class="form-control" placeholder="Introduzca el nombre del producto" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Eliminar</button>
                </div>
            </form>
            <br><br>

            Comentarios:
            <br><br>
            
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo6">Ver comentarios de un producto</button>
            <form action='Search.jsp' method='post'>
                <div id="demo6" class="collapse"><br>
                    <input type="text" name="juego" class="form-control" placeholder="Introduzca el nombre del producto del cual quiere ver los comentarios" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Buscar</button>
                </div>
            </form>
            
            
            
            
            
            
            
            
            
            <a class="btn btn-secondary" href="#" id="eliminar_comentario" role="button">Eliminar comentario </a>
            <br><br>
            Usuarios:
            <br><br>
            
            
            
            
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo7">Banear usuario</button>
            <form action='Ban' method='post'>
                <div id="demo7" class="collapse"><br>
                    <input type="text" name="usuario" class="form-control" placeholder="Introduzca el nickname del usuario a bannear" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Bannear</button>
                </div>
            </form>
            
            
            
            
            
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo8">Desbanear usuario</button>
            <form action='UnBan' method='post'>
                <div id="demo8" class="collapse"><br>
                    <input type="text" name="usuario" class="form-control" placeholder="Introduzca el nickname del usuario a bannear" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Bannear</button>
                </div>
            </form>
            
            
            
            <br><br>
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
