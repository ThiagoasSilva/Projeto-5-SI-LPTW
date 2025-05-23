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
        <h4>Cadastro de Veículos</h4>
        <form method="post" action="ServletCadastroLogin">
            <p> 
                Categoria:
                <input type="text" id="categoria" name="categoria" maxlength="40" placeholder="" required/>
            </p>
            <p> 
                Tipo:
                <input type="text" id="tipo" name="tipo" maxlength="40" placeholder="" required/>
            </p>
            <p> 
                Marca:
                <input type="text" id="marca" name="marca" maxlength="40" placeholder="" required/>
            </p>
            <p> 
                Modelo:
                <input type="text" id="modelo" name="modelo" maxlength="40" placeholder="" required/>
            </p>
            <p> 
                Cor:
                <input type="text" id="cor" name="cor" maxlength="40" placeholder="" required />
            </p>
            <p> 
                N° de rodas:
                <input type="text" id="rodas" name="rodas" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Motorização:
                <input type="text" id="motorizacao" name="motorizacao" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Peso:
                <input type="text" id="pseo" name="peso" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Cap/ tanque:
                <input type="text" id="capTanque" name="capTanque" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Assentos:
                <input type="text" id="assentos" name="assentos" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Ano de fabricação:
                <input type="text" id="anoFabr" name="anoFabr" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Ano de modelo:
                <input type="text" id="anoModelo" name="anoModelo" maxlength="40" placeholder="" required />
            </p>
            <p> 
                Placa:
                <input type="text" id="placa" name="placa" maxlength="40" placeholder="" required />
            </p>
            <p> 
                N° de Chassi:
                <input type="text" id="chassi" name="chassi" maxlength="40" placeholder="" required />
            </p>
            <div>
                <button type="submit" value="Registrar">Cadastrar</button>
                <button type="reset" value="Limpar">Limpar</button>
            </div>
        </form>

    </div>
</body>

</html>