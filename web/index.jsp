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
        
        LinkedList lista = models.News.get_news();
        models.News noticia1 = (models.News) lista.pollFirst();
        models.News noticia2 = (models.News) lista.pollFirst();
        models.News noticia3 = (models.News) lista.pollFirst();
        String titular1="";
        String titular2="";
        String titular3="";
        String body1="";
        String body2="";
        String body3="";
        if(noticia1!=null ){
            titular1 = noticia1.get_titular();
            body1 = noticia1.get_body();
        }else{
            titular1 = "Nada Nuevo por ahora";
            body1 = "Por ahora no hay novedades para mostrar";
        }if(noticia2!=null){
            titular2 = noticia2.get_titular();
            body2 = noticia2.get_body();
        }else{
            titular2 = "Nada Nuevo por ahora";
            body2 = "Por ahora no hay novedades para mostrar";
        }if(noticia3!=null){
            titular3 = noticia3.get_titular();
            body3 = noticia3.get_body();
        }else{
            titular3 = "Nada Nuevo por ahora";
            body3 = "Por ahora no hay novedades para mostrar";
        }
        
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


    </div> <!-- /container -->

</main>

<%@ include file="footer.jsp" %>
