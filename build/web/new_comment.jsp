<%-- 
    Document   : new_comment
    Created on : 22/05/2018, 04:13:16 PM
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
            <form action="servlet_new_comment">
                <div class="input-group">                
                    <div class="input-group-prepend">
                        <span class="display-4">Calificaci&oacuten</span>
                    </div>
                    <select class="custom-select my-1 mr-sm-2" name="assessment">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
                    </select>
                </div>
                <br><br>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="display-4">Descripci&oacuten</span>
                    </div>
                    <input type="text" placeholder="Ingrese su descipción" class="form-control" aria-label="With textarea" name="description" required >
                </div>
                <br><br>
                <button class="btn btn-primary" type="submit">Publicar</button>
                <script>
                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                    (function () {
                        'use strict';
                        window.addEventListener('load', function () {
                            // Fetch all the forms we want to apply custom Bootstrap validation styles to
                            var forms = document.getElementsByClassName('needs-validation');
                            // Loop over them and prevent submission
                            var validation = Array.prototype.filter.call(forms, function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (form.checkValidity() === false) {
                                        event.preventDefault();
                                        event.stopPropagation();
                                    }
                                    form.classList.add('was-validated');
                                }, false);
                            });
                        }, false);
                    })();
                </script>
            </form>
        </div>
    </body>
</html>
<%@ include file="footer.jsp" %>
