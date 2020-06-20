<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculo de Idade - Login</title>
    <link rel="stylesheet" type="text/css" href="resource/default.css">
</head>
<body>
    <form action="/Login" method="post">
        <div class="primeira-div">
            <div style="font-size: 22px; padding-bottom: 25px;">
                Calculo de Idade
            </div>
            <div>
                <label for="login">Login: </label>
                <input id="login" name="login" type="text" required>
            </div>
            <div>
                <label for="senha">Senha: </label>
                <input id="senha" name="senha" type="password" required>
            </div>
            <div style="padding-top: 10px">
                <button type="submit" value="Acessar">Acessar</button>
            </div>
        </div>
    </form>
</body>
</html>
