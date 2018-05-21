<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@ include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <div class="container">
            <br><br>
            
            <h1 class='display-2'>Catálogo</h1>
            
            <br><br>
            
            <%int l = models.product.get_products().size();%>
            <%if(l>0){%>
            <%for (int i = 0; i < l; i++) {
                    models.product producto = (models.product)models.product.get_products().get(i);
            %>

            <div class="jumbotron">
                <h2>Nombre: <%out.println(producto.get_name());%></h2>
                <h2>Precio: <%out.println(producto.get_price());%></h2>
                <h2>Descripcion: </h2>
                <h4><%out.println((String)producto.get_description());%></h4>
            </div>
            <%}}else{%>
            <div class="jumbotron">
                <h2>Ningun resultado</h2>
            </div>
            <%}%>
            
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
