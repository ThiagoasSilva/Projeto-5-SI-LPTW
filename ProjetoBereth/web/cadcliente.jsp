<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
   
    <title>Cadastro</title>
    <link rel="stylesheet" href="assets/css/cadcliente.css">
    <link rel="icon" type="image/x-icon" href="../design_&_layout/logotipo/drogabryan.png">
</head>

<body>
    <div class="form">
        <h4>Formulário de Cadastro de Cliente</h4>
        <form method="post" action="ServletCadastroLogin">
            <p> 
                CPF:
                <input type="text" id="cpf" name="cpf" maxlength="40" placeholder="CPF" required/>
            </p>
            <p> 
                RG:
                <input type="text" id="rg" name="rg" maxlength="40" placeholder="CPF" required/>
            </p>
            <p> 
                Nome:
                <input type="text" id="nome" name="nome" maxlength="40" placeholder="Nome Completo" required/>
            </p>
            <p> 
                Nascimento:
                <input type="text" id="nascimento" name="nascimento" maxlength="40" placeholder="CPF" required/>
            </p>
            <p> 
                E-mail:
                <input type="email" id="email" name="email" maxlength="40" placeholder="E-mail para login" required />
            </p>
            <p> 
                Senha:
                <input type="password" id="senha" name="senha" maxlength="40" placeholder="Senha" required />
            </p>
            <div>
                <button type="submit" value="Registrar">Cadastrar</button>
                <button type="reset" value="Limpar">Limpar</button>
            </div>
        </form>

    </div>
</body>

</html>