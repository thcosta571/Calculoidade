<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculo de Idade - Error</title>
    <link rel="stylesheet" type="text/css" href="resource/default.css">
    <script>
        function redirect(){
            window.location.href = "index.jsp";
        }
    </script>
</head>
<body>
    <div class="primeira-div align-center">
        <div style="padding-bottom: 40px;">
            Acesso negado!
        </div>
        <div>
            <button type="button" value="Login" onclick="redirect()">Login</button>
        </div>
    </div>
</body>
</html>
