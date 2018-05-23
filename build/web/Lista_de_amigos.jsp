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
    <body><form action="eliminar_amigo" method="post">
            <div class="container"><br><br>
                <h1 class='display-2'>Lista de deseados</h1>

                <br><br>

                <%int l = models.user.get_active_user().get_friendlist().size();%>
                <%if (l > 0) {%>
                <%for (int i = 0; i < l; i++) {
                        models.user usuario = (models.user) models.user.get_active_user().get_friendlist().get(i);
                %>

                <div class="jumbotron">

                    <h2>Nombre: <%out.println(usuario.get_name());%></h2>
                    <h2>Nickname:<%out.println(usuario.get_nikname());%></h2>
                    <h2>Nacionalidad:<%out.println(usuario.get_nationality());%></h2>
                    <button class="btn btn-secondary" name="usuario" type="submit" value="<%out.print(usuario.get_nikname());%>">Eliminar</button>
                </div>

                <%}
            } else {%>
                <div class="jumbotron">
                    <h2>No tiene amigos.</h2>
                </div>
                <%}%>
            </div>
        </form>

    </body>
</html>

<%@ include file="footer.jsp" %>
