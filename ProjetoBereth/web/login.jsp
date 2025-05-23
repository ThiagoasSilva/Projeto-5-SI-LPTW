<%-- 
    Document   : login.jsp
    Created on : May 9, 2025, 8:37:12 PM
    Author     : bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usuario = (String) session.getAttribute("usuario");
    String nome = (String) session.getAttribute("nome");
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>DrogaBryan</title>
    <link rel="icon" type="image/x-icon" href="assets/img/drogabryan.png">
    <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
    <div class="form">
        <h4>Formulário de Login de Clientes</h4>
        <form method="post" action="ServletLogin">
            <p> 
                Email:
                <input type="email" id="email" name="email" maxlength="40" placeholder="Email para login" />
            </p>
            <p> 
                Senha:
                <input type="password" id="senha" name="senha" maxlength="40" placeholder="Senha" />
            </p>
            <div class="form-buttons">
                <button type="submit" value="Logar">Logar</button>
                <button type="reset" value="Limpar">Limpar</button>
            </div>
            <div class="links">
                <p>
                    <a href="cadcliente.jsp">Cadastro de Clientes</a>
                </p>
            </div>
        </form>
    </div>
</body>

</html>