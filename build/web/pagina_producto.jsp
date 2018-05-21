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
                            <h2>
                                Descripcion: </h2><h4><p><%out.println(producto.get_description());%></p></h4>
                        </div>
                    </div>
                    <div class="col-md-6"> 
                        <div class="jumbotron">
                            <h2>Comentarios</h2>
                        </div>
                        <div class="jumbotron">
                            <h3>ea</h3>
                            <p>Éste es mi codigo, hay muchos como el pero este es mio, mi codigo es mi mejor amigo, es mi vida. Debo dominarlo 
                                como debo dominar mi vida. sin mi, mi codigo es inservible; sin mi codigo yo soy inservible. debo programar correctamente 
                                mi codigo, debo codificar antes que ataquen los bugs que tratan de destruirme.
                            </p>
                        </div>
                        <div class="jumbotron">
                            <p>comentario de prueba 2</P>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
