<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>--INFINITE--</title>
        <link rel="stylesheet" type="text/css" href="<c:url value = "/css/bootstrap.min.css"/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value = "/css/style.css"/>" />
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="index.jsp">INFINTE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="navbar-brand " href=<%if (models.user.get_active_user() == null) {
                                out.println("login.jsp");
                            } else {
                                models.user.go_home();
                            }%>><%if (models.user.get_active_user() == null) {
                                out.println("Log in");
                            } else {
                                out.println("Home");
                            }%></a>
                    </li>
                    <li class="nav-item">
                        <a class="navbar-brand " href=<%if (models.user.get_active_user() == null) {
                                out.println("sign_in.jsp");
                            } else {
                                out.println("log_out");
                            }%>><%if (models.user.get_active_user() == null) {
                                out.println("Sign In");
                            } else {
                                out.println("Log Out");
                            }%></a>
                    </li>
                    <form action="Datos1" method="post">
                        <li class="nav-item">
                            <input type="submit" class="navbar-brand" href="#" style="border: 0;background-color: transparent" value="Generar Datos">
                        </li>
                    </form>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Generar Datos desde un txt</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" action='Search_Products' method="post">
                    <input class="form-control mr-sm-2" type="text" placeholder="Buscar un producto" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" name='search' type="text">Buscar</button>
                </form>
            </div>
        </nav>
