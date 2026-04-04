<%@ page import="modelo.Usuario" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="util.HibernateUtil" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    Session sesionDB = HibernateUtil.getSessionFactory().openSession();
    Usuario u = sesionDB.get(Usuario.class, id);
%>

<html>
<head>
    <title>Editar Usuario</title>
</head>
<body>

<h2>Editar Usuario</h2>

<form action="actualizar" method="post">

    <input type="hidden" name="id" value="<%=u.getId()%>">

    Nombre: <input type="text" name="nombre" value="<%=u.getNombre()%>"><br><br>
    Edad: <input type="number" name="edad" value="<%=u.getEdad()%>"><br><br>
    Genero: <input type="text" name="genero" value="<%=u.getGenero()%>"><br><br>
    Telefono: <input type="text" name="telefono" value="<%=u.getTelefono()%>"><br><br>
    Direccion: <input type="text" name="direccion" value="<%=u.getDireccion()%>"><br><br>

    <input type="submit" value="Actualizar">
</form>

<%
    sesionDB.close();
%>

</body>
</html>