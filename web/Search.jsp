<%-- 
    Document   : Serach_by_name
    Created on : 20/05/2018, 12:31:08 PM
    Author     : pavilion
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
            
            <%int l = models.product.busqueda_actual.size();%>
            <%if(l>0){%>
            <%for (int i = 0; i < l; i++) {
                    models.product producto = models.product.busqueda_actual.get(i);
            %>

            <div class="jumbotron">
                <h2>Nombre: <%out.println(producto.get_name());%></h2>
                <h2>Precio: <%out.println(producto.get_price());%></h2>
                <h2>Descripcion: </h2>
                <h4><%out.println(producto.get_description());%></h4>

                </h1>
            </div>
            <%}}else{%>
            <div class="jumbotron">
                <h2>Ningun resultado</h2>
            </div>
            <%}%>
            
        </div>
    </body>
</html>
