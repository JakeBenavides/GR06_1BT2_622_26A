<%@ page import="java.util.List" %>
<%@ page import="modelo.Usuario" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="util.HibernateUtil" %>

<html>
<head>
    <title>Lista de Usuarios</title>
</head>
<body>

<h2>Lista de Usuarios</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Edad</th>
    <th>Genero</th>
    <th>Telefono</th>
    <th>Direccion</th>
    <th>Acciones</th>
</tr>

<%
 Session sesionDB = HibernateUtil.getSessionFactory().openSession();
 List<Usuario> lista = sesionDB.createQuery("FROM Usuario", Usuario.class).list();
    for(Usuario u : lista){
%>
<tr>
    <td><%= u.getId() %></td>
    <td><%= u.getNombre() %></td>
    <td><%= u.getEdad() %></td>
    <td><%= u.getGenero() %></td>
    <td><%= u.getTelefono() %></td>
    <td><%= u.getDireccion() %></td>

    <td>
        <a href="eliminar?id=<%=u.getId()%>">Eliminar</a>
        <a href="editar.jsp?id=<%=u.getId()%>">Editar</a>
    </td>
</tr>
<%
    }
    sesionDB.close();
%>

</table>

<br>
<a href="index.jsp">Volver</a>

</body>
</html>