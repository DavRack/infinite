<%-- 
    Document   : Library
    Created on : 20/05/2018, 09:24:43 PM
    Author     : pavilion
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@ include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container"><br><br>
            <h1>Biblioteca</h1><br><br>
            <%
                LinkedList lista = models.user.get_active_user().get_product_list();
                System.out.println(lista);
                Iterator iter = lista.iterator();
                if (!lista.isEmpty()) {
                    while (iter.hasNext()) {
                        models.product pro = (models.product) iter.next();
                        out.print(pro.toString());
                    }
                }else{
                    out.println("Usted no tiene productos actualmente");
                }
            %>
        </div>
    </body>
</html>
