<%-- 
    Document   : Lista_de_deseados
    Created on : 20/05/2018, 10:12:33 PM
    Author     : pavilion
--%>
<%@ include file="header.jsp" %>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container"><br><br>
            <h1 class='display-2'>Lista de deseados</h1>

            <br><br>

            <%int l = models.user.get_active_user().get_whishlist().size();%>
            <%if (l > 0) {%>
            <%for (int i = 0; i < l; i++) {
                    models.product producto = (models.product) models.user.get_active_user().get_whishlist().get(i);
            %>

            <div class="jumbotron">
                <form action="ver_producto" method="post">
                    <h2>Nombre: <%out.print(producto.get_name());%></h2>
                    <h2>Precio: <%out.println(producto.get_price());%></h2>
                    <h2>Descripcion: </h2>
                    <h4><%out.println(producto.get_description());%></h4>
                    <button class="btn btn-secondary" name="producto" type="submit" value="<%out.print(producto.get_name());%>">Ver más</button>
                </form>
            </div>

            <%}
            } else {%>
            <div class="jumbotron">
                <h2>Ningun resultado</h2>
            </div>
            <%}%>
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
