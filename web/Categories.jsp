<%-- 
    Document   : Categories
    Created on : 20/05/2018, 01:26:18 PM
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
        <div class="container">
            <h3><br><br><br>
                Las categorias dis ponibles actualmente son:
            </h3>
            <form action='catalogo' >
            <button class="btn btn-secondary" name="producto" type="submit" value="Aventuras">Aventuras</button>
            <button class="btn btn-secondary" name="producto" type="submit" value="Deportes">Deportes</button>
            <button class="btn btn-secondary" name="producto" type="submit" value="Disparos">Disparos</button>
            <button class="btn btn-secondary" name="producto" type="submit" value="Plataformas">Plataformas</button>
            <button class="btn btn-secondary" name="producto" type="submit" value="Simuladores">Simuladores</button>
            <button class="btn btn-secondary" name="producto" type="submit" value="Terror">Terror</button>
            </form>
        </div>
    </body>
</html>
