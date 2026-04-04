<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>

<h2>Registrar Usuario</h2>

<form action="guardarUsuario" method="post">
    Nombre: <input type="text" name="nombre"><br><br>
    Edad: <input type="number" name="edad"><br><br>
    Genero: <input type="text" name="genero"><br><br>
    Telefono: <input type="text" name="telefono"><br><br>
    Direccion: <input type="text" name="direccion"><br><br>

    <input type="submit" value="Guardar">
</form>

<br>

<a href="listaUsuarios.jsp">Ver usuarios</a>

</body>
</html>