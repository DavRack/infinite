<%-- 
    Document   : sign_in
    Created on : 18/05/2018, 06:00:47 PM
    Author     : user
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
            <br> <br>
            <h1 class="display-3">Ingresa tus datos</h1> <br>
            <form action='Servlet1' method='post'>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="validationCustom01">Nombre</label>
                        <input type="text" class="form-control" name="name" placeholder="Nombre" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="validationCustom02">Nickname</label>
                        <input type="text" class="form-control" name="nickname" placeholder="Nickname" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="validationCustomUsername">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" placeholder="Username" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Por favor ingrese una contraseña.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="validationCustom03">Email</label>
                        <input type="email" class="form-control" name="email"  placeholder="Ejemplo@mail.com" required>
                        <div class="invalid-feedback">
                            Por favor ingrese un email.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="validationCustom04">Ingrese su dinero</label>
                        <input type="text" class="form-control" name="money" required>
                        <div class="invalid-feedback">
                            Please provide a valid state.
                        </div>
                    </div>
                </div>
                Ingresa tu Fecha de nacimineto(dd/mm/aaaa):
                <select name ="day">
                    Dia:
                    <option value="01">01</option><option value="02">02</option>
                    <option value="03">03</option><option value="04">04</option>
                    <option value="05">05</option><option value="06">06</option>
                    <option value="07">07</option><option value="08">08</option>
                    <option value="09">09</option><option value="10">10</option>
                    <option value="11">11</option><option value="12">12</option>
                    <option value="13">13</option><option value="14">14</option>
                    <option value="15">15</option><option value="16">16</option>
                    <option value="17">17</option><option value="18">18</option>
                    <option value="19">19</option><option value="20">20</option>
                    <option value="21">21</option><option value="22">22</option>
                    <option value="23">23</option><option value="24">24</option>
                    <option value="25">25</option><option value="26">26</option>
                    <option value="27">27</option><option value="28">28</option>
                    <option value="29">29</option><option value="30">30</option>
                    <option value="31">31</option>
                </select>
                <select name = "month">
                    Mes:
                    <option value="01">01</option><option value="02">02</option>
                    <option value="03">03</option><option value="04">04</option>
                    <option value="05">05</option><option value="06">06</option>
                    <option value="07">07</option><option value="08">08</option>
                    <option value="09">09</option><option value="10">10</option>
                    <option value="11">11</option><option value="12">12</option>
                </select>
                <select name = "year">
                    Año:
                    <option value="2018">2018</option><option value="2017">2017</option>
                    <option value="2016">2016</option><option value="2015">2015</option>
                    <option value="2014">2014</option><option value="2013">2013</option>
                    <option value="2012">2012</option><option value="2011">2011</option>
                    <option value="2010">2010</option><option value="2009">2009</option>
                    <option value="2008">2008</option><option value="2007">2007</option>
                    <option value="2006">2006</option><option value="2005">2005</option>
                    <option value="2004">2004</option><option value="2003">2003</option>
                    <option value="2002">2002</option><option value="2003">2001</option>
                    <option value="2002">2000</option><option value="2003">1999</option>
                    <option value="2002">1998</option><option value="2003">1997</option>
                    <option value="2002">1996</option><option value="2003">1995</option>
                </select><br><br>
                Ingresa tu Nacionalidad:
                <select name ="nationality">
                    <option value="Colombia">Colombia</option>
                    <option value="Estados unidos">EEUU</option>
                    <option value="Perú">Per&uacute</option>
                    <option value="México">M&eacutexico</option>
                </select><br><br>
                Ingresa el rol que desempeñarás en la comunidad:
                <select name ="rol">
                    <option value="Comprador">Comprador</option>
                    <option value="Vendedor">Vendedor</option>
                    <option value="Administrador">Administrador</option>
                </select>
                <br><br>
                <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                        <label class="form-check-label" for="invalidCheck">
                            Agree to terms and conditions
                        </label>
                        <div class="invalid-feedback">
                            You must agree before submitting.
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary" type="submit">Submit form</button>

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
