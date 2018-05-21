<%-- 
    Document   : Profile
    Created on : 20/05/2018, 07:55:34 PM
    Author     : pavilion
--%>
<%@ include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%models.user usuario = models.user.get_active_user();%>
        <div class="container"><br><br>
            <h1> Mi Perfil</h1>
            <h5>
            Nombre: <%out.println(usuario.get_name());%><br>
            Username: <%out.println(usuario.get_nikname());%><br>
            e-mail: <%out.println(usuario.get_email());%><br>
            Cantidad de dinero que posee actualmente: <%out.println(usuario.get_money());%><br>
            </h5>
        </div>
    </body>
</html>
