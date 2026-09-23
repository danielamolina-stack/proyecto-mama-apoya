<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MamaApoya</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="light-blue lighten-5">
    <nav class="blue darken-3">
        <div class="nav-wrapper container">
            <a href="index.jsp" class="brand-logo">MamaApoya</a>
            <ul class="right">
                <li><a href="login.jsp">Iniciar Sesión</a></li>
                <li><a href="registro.jsp">Registrarse</a></li>
                <li><a href="consultas.jsp">Consultas</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1 class="center blue-text text-darken-3" style="margin-top: 50px;">MamaApoya</h1>
        <p class="center flow-text">Sistema de Gestión de Ayudas y Beneficiarios</p>
        
        <div class="row" style="margin-top: 50px;">
            <div class="col s12 m4">
                <div class="card">
                    <div class="card-content center">
                        <i class="material-icons large blue-text">people</i>
                        <h5>Usuarios</h5>
                        <p>Gestión de accesos al sistema</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4">
                <div class="card">
                    <div class="card-content center">
                        <i class="material-icons large green-text">volunteer_activism</i>
                        <h5>Ayudas</h5>
                        <p>Registro de entregas</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m4">
                <div class="card">
                    <div class="card-content center">
                        <i class="material-icons large orange-text">search</i>
                        <h5>Consultas</h5>
                        <p>Listado de beneficiarios</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="center-align" style="margin: 50px 0;">
            <a href="login.jsp" class="btn-large blue darken-3">
                <i class="material-icons left">login</i> Ingresar
            </a>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>