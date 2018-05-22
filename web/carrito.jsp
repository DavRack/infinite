<%-- 
    Document   : carrito
    Created on : 22/05/2018, 02:46:13 PM
    Author     : user
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
            <br><br>

            <h1 class='display-2'>Carrito</h1>

            <br><br>

            <%int l =  models.user.get_active_user().get_bill_list().size();%>
            <%if (l > 0) {%>
            <%for (int i = 0; i < l; i++) {
                    models.product producto = (models.product) models.user.get_active_user().get_bill_list().get(i);
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