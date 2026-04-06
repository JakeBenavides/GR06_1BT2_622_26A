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
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.3);
            max-width: 500px;
            width: 100%;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2em;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 15px;
            margin-bottom: 5px;
            color: #555;
            font-weight: 600;
        }

        input[type="text"],
        input[type="number"],
        input[type="hidden"] {
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 5px;
            font-size: 1em;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 10px rgba(102, 126, 234, 0.2);
        }

        input[type="submit"] {
            margin-top: 25px;
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }

        .links {
            text-align: center;
            margin-top: 20px;
        }

        a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #764ba2;
            text-decoration: underline;
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
    <h2>Editar Usuario</h2>

    <form action="actualizar" method="post">

        <input type="hidden" name="id" value="<%=u.getId()%>">

        <label>Nombre:</label>
        <input type="text" name="nombre" value="<%=u.getNombre()%>" required>

        <label>Edad:</label>
        <input type="number" name="edad" value="<%=u.getEdad()%>" required>

        <label>Género:</label>
        <input type="text" name="genero" value="<%=u.getGenero()%>" required>

        <label>Teléfono:</label>
        <input type="text" name="telefono" value="<%=u.getTelefono()%>" required>

        <label>Dirección:</label>
        <input type="text" name="direccion" value="<%=u.getDireccion()%>" required>

        <input type="submit" value="Actualizar Usuario">
    </form>

    <div class="links">
        <a href="listaUsuarios.jsp">Ver usuarios</a>
    </div>
</div>

<div class="footer">
    Made by GR06
</div>

<%
    sesionDB.close();
%>

</body>
</html>