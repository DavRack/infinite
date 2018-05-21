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
            <div class="container">
                <div class="jumbotron">
                    <h1> Mi Perfil</h1><br>
                    <h5>
                        Nombre: <%out.println(usuario.get_name());%><br><br>
                        Username: <%out.println(usuario.get_nikname());%><br><br>
                        e-mail: <%out.println(usuario.get_email());%><br><br>
                        Fecha de Nacimiento: <%out.println(usuario.get_birth_date());%><br><br>
                        País de origen: <%out.println(usuario.get_nationality());%><br><br>
                        Cantidad de dinero que posee actualmente: <%out.println(usuario.get_money());%><br><br><br><br>
                        <a class="btn btn-secondary" href="Library.jsp" role="button">Ver mi biblioteca</a>
                        <a class="btn btn-secondary" href="Lista_de_deseados.jsp" role="button">Ver mi lista de deseados</a>
                        <a class="btn btn-secondary" href="Lista_de_amigos.jsp" role="button">Ver mi lista de amigos</a>
                    </h5>
                </div>
            </div>
        </div>
    </body>
</html>
