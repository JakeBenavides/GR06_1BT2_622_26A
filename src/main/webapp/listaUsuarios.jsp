<%@ page import="java.util.List" %>
<%@ page import="modelo.Usuario" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="util.HibernateUtil" %>

<html>
<head>
    <title>Lista de Usuarios</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #764ba2 0%, #000000 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding: 20px;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        h2 {
            color: white;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        th {
            background-color: #667eea;
            color: white;
            padding: 15px;
            text-align: left;
            font-weight: 600;
        }

        td {
            padding: 12px 15px;
            border-bottom: 1px solid #e0e0e0;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        tr:last-child td {
            border-bottom: none;
        }

        a {
            color: #667eea;
            text-decoration: none;
            margin-right: 10px;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #764ba2;
            text-decoration: underline;
        }

        .volver-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: white;
            color: #667eea;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .volver-btn:hover {
            background-color: #f0f0f0;
            transform: translateY(-2px);
        }

        .footer {
            position: fixed;
            bottom: 20px;
            left: 20px;
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.9em;
            font-weight: 500;
        }
    </style>
</head>
<body>

<div class="container">
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

    <a href="index.jsp" class="volver-btn">Volver</a>
</div>

<div class="footer">
    Made by GR06
</div>

</body>
</html>