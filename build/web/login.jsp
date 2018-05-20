<%@ include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <br> <br>
            <h1 class="display-3">Ingresa tus datos</h1> <br>
            <form action='Servlet2'method='post'>
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nickname</label>
                        <input type="text" name="nickname" class="form-control" placeholder="Nickname">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                </form>
            </form>
        </div>
    </body>
</html>