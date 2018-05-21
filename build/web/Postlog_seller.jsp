<%-- 
    Document   : postlog_seller
    Created on : 21/05/2018, 01:25:45 AM
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
                Te has logeado como Vendedor
            </h5><br>
            <h5>
                ¿Qué desea hacer a continuación?
            </h5>
            <br><br>
            Producto:
            <br><br>
            <a class="btn btn-secondary" href="Library.jsp" id="categories" role="button">Ver productos Existentes</a>
            <a class="btn btn-secondary" href="New_game.jsp" id="categories" role="button">Poner a la venta un producto nuevo</a>
            <br><br>

            Editar:

            <br><br>

            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo3">Titulo</button>
            <form action='edit_title' method='post'>
                <div id="demo3" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required><br>
                    <input type="text" name="change_nombre" class="form-control" placeholder="Introduzca el nuevo nombre del producto" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                </div>
            </form>
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo4">Precio</button>
            <form action='edit_price' method='post'>
                <div id="demo4" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required><br>
                    <input type="number" name="change_precio" class="form-control" placeholder="Introduzca el nuevo precio" required>
                    <br>
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                </div>
            </form>
            <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo5">Descripción</button>
            <form action='edit_description' method='post'>
                <div id="demo5" class="collapse"><br>
                    <input type="text" name="product" class="form-control" placeholder="Introduzca el nombre del producto a cambiar" required><br>
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
            Log out:
            <br><br>
            <form action='Servlet2' method='post'>
                <a class="btn btn-secondary" href="log_out" role="button">Cerrar Sesión</a><br><br><br>
            </form>

        </div>

    </body>
</html>
<%@ include file="footer.jsp" %>