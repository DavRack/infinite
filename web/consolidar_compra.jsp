<%-- 
    Document   : consolidar_compra
    Created on : 21/05/2018, 10:54:05 PM
    Author     : user
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
        <div class="container">
            <br><br><br>
            <h1>¿Que desea hacer?</h1>
            <br><br><br>
            <form action="carrito.jsp">
                <button class="btn btn-secondary" name="producto" type="submit" value="Acción">Ver carrito</button>
            </form>
            <%  if(models.user.get_active_user().get_bill_list().size()>0){
                if (models.user.get_active_user().get_money() > models.bill.total_price(models.user.get_active_user().get_bill_list())) {%>
            <form action="consolidar_compra" method="post">
                <button class="btn btn-secondary" name="producto" type="submit" value="Acción">Consolidar compra</button>
            </form>
            <%} else {
            %>
            No tiene dinero suficiente para realizar la compra
            <%}}%>

        </div>

    </body> 
</html>
<%@ include file="footer.jsp" %>