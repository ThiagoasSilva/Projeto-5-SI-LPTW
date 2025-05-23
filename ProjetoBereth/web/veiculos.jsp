<%-- 
    Document   : produtos
    Created on : May 12, 2025, 8:22:27 PM
    Author     : bryan
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.controller.Produtos" %>
<%@ page import="com.model.ProdutosDAO" %>
<%
    // Cria o objeto de acesso aos dados e pesquisa todos os produtos
    ProdutosDAO produtosDAO = new ProdutosDAO();
    ArrayList<Produtos> listaProdutos = produtosDAO.pesquisarTudo();
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DrogaBryan - Catálogo de Produtos</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="icon" type="image/x-icon" href="../design_&_layout/logotipo/drogabryan.png">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="produtos.jsp">Produtos</a></li>
                <%-- Verifica se o usuário está logado, baseado em uma variável de sessão, por exemplo "nome" --%>
                <%
                    if (session.getAttribute("nome") == null) {
                %>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="cadcliente.jsp">Cadastro</a></li>
                <%
                    } else { 
                %>
                    <li><a href="carrinho.jsp">Carrinho</a></li>
                    <li><a href="perfil.jsp">Meu Perfil</a></li>
                <%
                    }
                %>
            </ul>
        </nav>
    </header>

    <main>
        <div>
            <h1>Catálogo de Produtos</h1>
            <section class="grid grid-template-columns-4">
                <%
                    // Laço para iterar pelos produtos e exibi-los
                    for (Produtos produto : listaProdutos) {
                %>
                    <div class="item">
                        <%-- Altere o src abaixo para utilizar a imagem real, se a classe possuir essa informação --%>
                        <img class="imgProduto" src="<%= produto.getImagem() %>" alt="Imagem do Produto">
                        <%-- <h3>ID: <%= produto.getId() %></h3> --%>
                        <h3>Nome: <%= produto.getNome() %></h3>
                        <p>Preço: R$<%= produto.getPreco() %></p>
                        <p>Receita? <%= produto.isReceita() ? "Sim" : "Não" %></p>
                        <%-- Link para efetuar a compra/pedido do produto (ajuste o caminho conforme sua estrutura) --%>
                        <button class="comprarButton">
                            <a href="AdicionarCarrinho?idproduto=<%= produto.getId() %>&quantidade=1" class="comprarButton">Adicionar ao carrinho</a>
                        </button>
                    </div>
                <%
                    }
                %>
            </section>
        </div>
    </main>

    <footer>
        <div class="footer-content">
            <ul class="autores">
                <h3>Autores</h3>
                <li>
                    <img class="autoresImg" src="../design_&_layout/logotipo/github-mark.png">
                    <a href="https://github.com/Bryanjvo">Bryan</a>
                </li>
            </ul>
            <ul>
                <h3>Contato</h3>
                <li><img class="autoresImg" src="../design_&_layout/logotipo/telefone.png"> (61) 91234-5678</li>
                <li><img class="autoresImg" src="../design_&_layout/logotipo/email.png">
                    <a style="color: white;" href="mailto:#">farmacia@gmail.com</a>
                </li>
            </ul>
            <ul>
                <h3>Endereço</h3>
                <li>CEP: 260.333-299</li>
                <li>CNB 10</li>
                <li>Taguatinga - Brasília/DF</li>
            </ul>
            <ul>
                <h3>Redes Sociais</h3>
                <li><img class="autoresImg" src="../design_&_layout/logotipo/ig icon.png"> <a href="#">Instagram</a></li>
                <li><img class="autoresImg" src="../design_&_layout/logotipo/whatsapp.png"> <a href="#">WhatsApp</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
