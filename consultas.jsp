<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consultas - MamaApoya</title>
<style>
    body { font-family: sans-serif; padding: 20px; background: #f5f5f5; }
    .contenedor { max-width: 800px; margin: 0 auto; background: white; padding: 25px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
    h2 { color: #2c3e50; text-align: center; }
    .mensaje { padding: 10px; margin: 10px 0; border-radius: 5px; }
    .exito { background: #d4edda; color: #155724; }
    .error { background: #f8d7da; color: #721c24; }
    a { display: inline-block; margin-top: 20px; color: #007bff; text-decoration: none; }
    a:hover { text-decoration: underline; }
</style>
</head>
<body>

<div class="contenedor">
    <h2>📋 Consultas</h2>

    <%-- Aquí van los mensajes --%>
    <% String mensaje = request.getParameter("mensaje");
       if (mensaje != null) { %>
        <div class="mensaje exito"><%= mensaje %></div>
    <% } %>

    <% String error = request.getParameter("error");
       if (error != null) { %>
        <div class="mensaje error">Ocurrió un error al cargar los datos</div>
    <% } %>

    <%-- AQUÍ VAN TUS TABLAS / DATOS / BÚSQUEDAS --%>
    <%-- De momento mostramos un aviso --%>
    
    <p style="text-align:center; color:#666; padding:20px;">
        🚧 Sección en construcción...<br>
        Aquí aparecerán tus consultas de la base de datos.
    </p>

    <a href="index.jsp">← Volver al inicio</a>
</div>

</body>
</html>