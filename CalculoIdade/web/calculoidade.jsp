<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //Verifica se a página está apta a ser renderizada
    Boolean autenticate = (Boolean) request.getAttribute("autenticate");
    if(autenticate == null || (autenticate != null && !autenticate)){
        response.sendRedirect("error.jsp");
    }
%>

<html>
<head>
    <title>Calculo de Idade</title>
    <link rel="stylesheet" type="text/css" href="resource/default.css">
    <script>
        function calculaIdade(nascimento){
            nascimento = new Date(nascimento);
            document.getElementById("calculo").value = Math.floor(Math.ceil(Math.abs(nascimento.getTime() - new Date().getTime()) / (1000 * 3600 * 24)) / 365.25);
        }
    </script>
</head>
<body>
<div class="primeira-div">
    <div>
        <label for="idade" >Nascimento: </label>
        <input id="idade" type="date" required/>
    </div>
    <div style="padding: 15px 0">
        <button type="button" onclick="calculaIdade(document.getElementById('idade').value)">Calcular</button>
    </div>
    <div>
        <input id="calculo" type="text" readonly/>
    </div>
</div>
</body>
</html>
