<%@page import="java.util.LinkedList"%>
<%@ include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% LinkedList lista = models.product.get_products();%>
        <div class="container">
            <br><br><br><br>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Categoria</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="pro">
                        <tr>
                            <th scope="row">1</th>
                            <td>${pro.get_name()}</td>
                            <td>${pro.get_category()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>

<%@ include file="footer.jsp" %>
