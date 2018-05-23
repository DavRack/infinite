<%-- 
    Document   : mas_activo
    Created on : 20/05/2018, 11:03:39 PM
    Author     : David
--%>

<%@page import="models.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><br><br>
        <div class="container">
            <div class="jumbotron">
                <h1>El usuario más activo es:</h1> 
                <h2><%out.println(models.user.get_most_active_user());%></h2> 
            </div>
        </div>
    </body>
</html>
<%@ include file="footer.jsp" %>