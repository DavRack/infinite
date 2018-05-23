<%-- 
    Document   : newjsp
    Created on : 21/05/2018, 03:08:53 AM
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
    <body><br><br>
        <div class="container">
            <h1>Crear un nuevo Producto</h1>
            <form action='Servlet_New_Game' method='post'>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="validationCustom01">Nombre</label>
                        <input type="text" class="form-control" name="name" placeholder="Nombre" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="validationCustom02">Precio</label>
                        <input type="text" class="form-control" name="precio" placeholder="Ingrese el precio" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                </div>

                Categoria:
                <select name ="category">
                    <option value="Aventuras">Aventuras</option>
                    <option value="Deportes">Deportes</option>
                    <option value="Disparos">Disparos</option>
                    <option value="Simuladores">Simuladores</option>
                    <option value="Terror">Terror</option>
                </select><br><br>
                <div class="form-group">
                    <label for="validationCustom03">Descripción</label>
                    <input type="text" class="form-control"   name="descripcion" placeholder="Descripción del producto" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <br><br>

                <button class="btn btn-primary" type="submit">Poner a la venta</button>

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
                <br><br>
            </form>
        </div>
    </body>
</html>
<%@ include file="footer.jsp" %>