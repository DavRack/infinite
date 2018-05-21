<%@ include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <div class="container">
            <h1>
                Bienvenido, <%out.println(models.user.get_active_user().get_nikname());%><br>
            </h1>
            <h5>
                Te has logeado como comprador
            </h5><br>
            <h5>
                ¿Qué desea hacer a continuación?
            </h5>
            <br>
            Buscar un juego:
            <br><br>
            <a class="btn btn-secondary" href="Categories.jsp" id="categories" role="button">Ver Categorias</a>
            <a class="btn btn-secondary" href="catalogo.jsp" role="button">Ver Catálogo Completo</a>
            <a class="btn btn-secondary" href="Servlet_Users" role="button">Ver Producto más Vendido</a>
            <br><br><br>
            Mi perfil:
            <br><br>
            <a class="btn btn-secondary" href="Profile.jsp" role="button">Ver mi perfil</a>
            <a class="btn btn-secondary" href="Library.jsp" role="button">Ver mi Biblioteca</a>
            <a class="btn btn-secondary" href="Servlet_Users" role="button">Agregar más dinero a la cuenta</a>
            <a class="btn btn-secondary" href="Servlet_Users" role="button">Agregar un amigo</a>
            <a class="btn btn-secondary" href="Servlet_Users" role="button">Ver el Usuario Más Activo</a>
            <br><br><br>
            ¿Guargar datos?<br><br>
            <a class="btn btn-secondary" href="Servlet_Users" role="button">¿Guargar datos?</a><br><br><br>
            <form action='Servlet2' method='post'>
                <form>
                    <a class="btn btn-secondary" href="log_out" role="button">Cerrar Sesión</a><br><br><br>
                </form>
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
<%--Crear if que si lo que reciben es algo lo metan en un lado y si es otra cosa, en otro --%>