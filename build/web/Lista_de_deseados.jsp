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
            <h1>Lista de deseados</h1><br><br>
            <%
                LinkedList lista = models.user.get_active_user().get_whishlist();
                System.out.println(lista);
                Iterator iter = lista.iterator();
                if (!lista.isEmpty()) {
                    while (iter.hasNext()) {
                        models.product pro = (models.product) iter.next();
                        out.print(pro.toString());
                    }
                }else{
                    out.println("De momento, usted no tiene productos en su lista de desados.");
                }
            %>
        </div>
    </body>
</html>

<%@ include file="footer.jsp" %>
