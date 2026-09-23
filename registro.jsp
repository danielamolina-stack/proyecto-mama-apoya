<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro — MamaApoya</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="light-blue lighten-5">
    <nav class="blue darken-3">
        <div class="nav-wrapper container">
            <a href="index.jsp" class="brand-logo">MamaApoya</a>
            <ul class="right">
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="login.jsp">Iniciar Sesión</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row" style="margin-top: 30px;">
            <div class="col s12 m8 offset-m2">
                <div class="card">
                    <div class="card-content">
                        <h4 class="center blue-text text-darken-3">Registro de Usuario</h4>
                        
                        <% if(request.getParameter("exito") != null) { %>
                            <div class="card-panel green lighten-4 green-text text-darken-4">
                                ✅ ¡Usuario registrado! Ya puedes <a href="login.jsp">iniciar sesión</a>
                            </div>
                        <% } else if(request.getParameter("duplicado") != null) { %>
                            <div class="card-panel red lighten-4 red-text text-darken-4">
                                ❌ Este correo ya está registrado
                            </div>
                        <% } %>
                        
                        <form action="RegistroServlet" method="post">
                            <div class="row">
                                <div class="input-field col s12 m6">
                                    <i class="material-icons prefix">badge</i>
                                    <input type="text" name="nombre" id="nombre" required>
                                    <label for="nombre">Nombre</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <i class="material-icons prefix">label</i>
                                    <input type="text" name="apellido" id="apellido" required>
                                    <label for="apellido">Apellido</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">email</i>
                                    <input type="email" name="correo" id="correo" required>
                                    <label for="correo">Correo Electrónico</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12 m6">
                                    <i class="material-icons prefix">lock</i>
                                    <input type="password" name="contrasena" id="contrasena" required>
                                    <label for="contrasena">Contraseña</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <i class="material-icons prefix">phone</i>
                                    <input type="tel" name="telefono" id="telefono">
                                    <label for="telefono">Teléfono</label>
                                </div>
                            </div>
                            <button type="submit" class="btn blue darken-3 col s12">
                                Registrarme
                            </button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>