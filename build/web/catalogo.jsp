<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@ include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container"><br>
            <h1>Catálogo</h1><br><br>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Vendedor</th>
                    </tr>
                </thead>
                <%
                    LinkedList lista = models.product.get_products();
                    Iterator iter = lista.iterator();
                    while (iter.hasNext()) {
                        models.product pro = (models.product) iter.next();
                        String name = pro.get_name();
                        String category = pro.get_category();
                        String seller = pro.get_seller().get_name();
                %>
                <tbody>
                    <tr>
                        <td><% out.println(name); %></td>
                        <td><% out.println(category); %></td>
                        <td><% out.println(seller); %></td>
                    </tr>
                </tbody>
                <%
                    }%>
            </table>
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
