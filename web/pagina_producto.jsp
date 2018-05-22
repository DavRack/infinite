<%-- 
    Document   : pagina_producto
    Created on : 21/05/2018, 05:15:07 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%models.product producto = models.product.get_active_product();%>
        <div class="container"><br><br><br>
            <center><h1><%out.println(producto.get_name().toUpperCase());%></h1></center>
            <div class="i-am-centered">
                <div class="row">                
                    <div class="col-md-6">                            
                        <div class="jumbotron">
                            <h2>Categoria:</h2><h3> <%out.println(producto.get_category());%></h3><br><br>
                            <h2>Precio: <%out.println(producto.get_price());%></h2><br>
                            <h2>Descripcion: </h2><h4><%out.println(producto.get_description());%></h4><br>
                            <h2>Vendedor: </h2><h3><%out.println(producto.get_seller().get_name());%></h3>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="jumbotron">
                            <h2>Comentarios</h2>
                        </div>
                        <%java.util.LinkedList comentarios = producto.get_comment_list();%>
                        <%int L = comentarios.size();
                            if (L > 0) {%>
                        <%for (int i = 0; i < L; i++) {
                        models.comment comentario = (models.comment) comentarios.get(i);%>
                        <div class="jumbotron">
                            <h3>"<%out.println(comentario.get_description());%>"</h3>
                            
                            <h4>Fecha: <%out.println(comentario.get_date());%></h4>
                            <h4>Autor: <%out.println(comentario.get_author().get_name());%></h4>
                            
                        </div>

                        <%}
                            }%>
                        <div class="jumbotron">
                            <h3>Credo del programador</h3>
                            <p>Éste es mi codigo, hay muchos como el pero este es mio, mi codigo es mi mejor amigo, es mi vida. Debo dominarlo 
                                como debo dominar mi vida. sin mi, mi codigo es inservible; sin mi codigo yo soy inservible. debo programar correctamente 
                                mi codigo, debo codificar antes que ataquen los bugs que tratan de destruirme.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
