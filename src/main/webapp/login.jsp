<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- Include Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <title>Inicio de Sesión</title>
        <style>
            /* Definir las clases CSS para los estilos de centrado, tipos de letra y color pastel */
            .pastel-bg {
                background-color: #b2d8d8; /* Color pastel */
            }
            .pastel-text {
                color: #b2d8d8; /* Color pastel */
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Tipo de letra */
            }
            .pastel-btn {
                background-color: #b2d8d8; /* Color pastel */
                border-color: #b2d8d8; /* Color pastel */
                color: #fff;
            }
            .center {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
        </style>
    </head>
    <body class="pastel-bg">

        <a href="index.jsp" class="btn btn-link pastel-text">
            <i class="fas fa-home fa-2x"></i>
        </a>

        <div class="container center">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title text-center pastel-text">Iniciar Sesión</h2>

                    <%
                        String error = request.getParameter("error");
                        if (error != null) {
                            error = new String(error.getBytes("ISO-8859-1"), "UTF-8");
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%= error%>
                    </div>
                    <%
                        }
                    %>

                    <form action="LoginServlet" method="post">
                        <div class="form-group">
                            <label for="username" class="pastel-text">Nombre de Usuario:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password" class="pastel-text">Contraseña:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn pastel-btn btn-block">Iniciar Sesión</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Include Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body>
</html>
