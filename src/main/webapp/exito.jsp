<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Éxito</title>
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
            padding: 60px 40px;
            border-radius: 15px;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.3);
            max-width: 500px;
            width: 100%;
            text-align: center;
        }

        h2 {
            color: #33a86e;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.2em;
        }

        .success-icon {
            font-size: 4em;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            font-size: 1.1em;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 30px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        a:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
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
    <div class="success-icon">✅</div>
    <h2>¡Usuario guardado correctamente!</h2>
    <p>Tu usuario ha sido registrado exitosamente en el sistema.</p>
    <a href="index.jsp">Volver al formulario</a>
</div>

<div class="footer">
    Made by WitaPoke
</div>

</body>
</html>