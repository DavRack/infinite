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
            <a class="btn btn-secondary" href="New_game.jsp" id="categories" role="button">Poner a la venta un producto nuevo</a>
            <a class="btn btn-secondary" href="#" id="remove" role="button">Eliminar un producto</a>
            <br><br>
            
            Editar:
            <br><br>
            <a class="btn btn-secondary" href="Change_product.jsp" id="titulo" role="button">Titulo</a>
            <a class="btn btn-secondary" href="#" id="precio" role="button">Precio</a>
            <a class="btn btn-secondary" href="#" id="descipcion" role="button">Descripción</a>
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