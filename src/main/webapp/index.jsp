

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Bienvenido a ToDoListApp</title>
    <style>
        /* Definir las clases CSS para los estilos de color pastel */
        .pastel-primary {
            background-color: #b2d8d8;
            border-color: #b2d8d8;
            color: #fff;
        }
        .pastel-secondary {
            background-color: #f0c8c9;
            border-color: #f0c8c9;
            color: #fff;
        }
        /* Estilos adicionales */
        h1, p {
            color: #333;
        }
        
		/* Definir la clase CSS para el color pastel */
		.pastel {
			background-color: #b2d8d8; /* Color pastel */
		}
	
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Bienvenido a ToDoListApp</h1>
    <p class="text-center">Una aplicación simple para gestionar tus tareas.</p>
    <div class="text-center">
        <!-- Botón para navegar a la página de inicio de sesión -->
        <a href="login.jsp" class="btn btn-lg pastel-primary">Iniciar Sesión</a>
        <!-- Botón para navegar a la página de registro -->
        <a href="register.jsp" class="btn btn-lg pastel-secondary">Registrarse</a>
    </div>
</div>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
