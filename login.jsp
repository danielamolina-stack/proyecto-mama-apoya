<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión — MamaApoya</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="light-blue lighten-5">
    <nav class="blue darken-3">
        <div class="nav-wrapper container">
            <a href="index.jsp" class="brand-logo">MamaApoya</a>
            <ul class="right">
                <li><a href="index.jsp">Inicio</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row" style="margin-top: 50px;">
            <div class="col s12 m6 offset-m3">
                <div class="card">
                    <div class="card-content">
                        <h4 class="center blue-text text-darken-3">Iniciar Sesión</h4>
                        
                        <% if(request.getParameter("error") != null) { %>
                            <div class="card-panel red lighten-4 red-text text-darken-4">
                                ❌ Correo o contraseña incorrectos
                            </div>
                        <% } %>
                        
                        <form action="LoginServlet" method="post">
                            <div class="input-field">
                                <i class="material-icons prefix">email</i>
                                <input type="email" name="correo" id="correo" required>
                                <label for="correo">Correo Electrónico</label>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">lock</i>
                                <input type="password" name="contrasena" id="contrasena" required>
                                <label for="contrasena">Contraseña</label>
                            </div>
                            <button type="submit" class="btn blue darken-3 col s12">
                                Ingresar
                            </button>
                            <div class="clearfix"></div>
                        </form>
                        <p class="center" style="margin-top: 20px;">
                            ¿No tienes cuenta? <a href="registro.jsp">Regístrate aquí</a><br>
                            <a href="#">¿Olvidaste tu contraseña?</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>