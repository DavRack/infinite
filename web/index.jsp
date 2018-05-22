<%@page import="java.util.LinkedList"%>
<%@ include file="header.jsp" %>

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Bienvenidos a Infinite!</h1>
            <p>Una tienda virtual de cosas virtuales :v</p>
            <p><a class="btn btn-primary btn-lg" href="sign_in.jsp" role="button">¡Regístrate ya! &raquo;</a></p>
        </div>
    </div>


    <%
        models.News.add_news();
        LinkedList lista = models.News.get_news();
        models.News noticia1 = (models.News) lista.pollFirst();
        String titular1 = noticia1.get_titular();
        String body1 = noticia1.get_body();
        models.News noticia2 = (models.News) lista.pollFirst();
        String titular2 = noticia2.get_titular();
        String body2 = noticia2.get_body();
        models.News noticia3 = (models.News) lista.pollFirst();
        String titular3 = noticia3.get_titular();
        String body3 = noticia3.get_body();
        lista.addFirst(noticia1);
        lista.addFirst(noticia2);
        lista.addFirst(noticia3);
    %>
    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-4">
                <h2><%out.println(titular1);%></h2>
                <p><%out.println(body1);%></p>
                <p><a class="btn btn-secondary" href="#" role="button">Ir al producto &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <h2><%out.println(titular2);%></h2>
                <p><%out.println(body2);%></p>
                <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <h2><%out.println(titular3);%></h2>
                <p><%out.println(body3);%></p>
                <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
            </div>
        </div>

        <hr>

    </div> <!-- /container -->

</main>

<%@ include file="footer.jsp" %>
