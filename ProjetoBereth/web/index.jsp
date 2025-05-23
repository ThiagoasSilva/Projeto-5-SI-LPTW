<%-- 
    Document   : index.jsp
    Created on : May 9, 2025, 7:30:24 PM
    Author     : bryan
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%
    String usuario = (String) session.getAttribute("usuario");
    String nome = (String) session.getAttribute("nome");
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Bereth</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="icon" type="image/x-icon" href="assets/img/drogabryan.png">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>

            <% if (usuario == null) { %>
                <li><a href="veiculos.jsp">Produtos</a></li>
            <% } else { %>
                <li><a href="view/viewFuncionario/Produtofuncionario.jsp">ProdutosFuncionario</a></li>
            <% } %>

            <% if (nome == null) { %>
                <li><a href="login.jsp">LoginCliente</a></li>
                <li><a href="view/viewFuncionario/LoginFuncionario.jsp">LoginFuncionario</a></li>
            <% } else { %>
                <li><a href="perfil.jsp">Meu Perfil</a></li>
                <li><a href="logout">Logout</a></li>
            <% } %>
        </ul>
    </nav>
</header>
<!-- resto da página continua igual -->
<main>

        <section class="aboutus">
            <br>
            <img style="width: 150px; border-radius: 250px;" src="assets/img/drogabryan.png"
                alt="Logo Corvus.tech">
            <br>
            <h1>Valores que acreditamos</h1>
            <div class="texto">

                <p>
                    1. Mantenha sua postura ereta e seus ombros para trás:
                    Adotar uma postura confiante não é apenas uma questão física, mas também emocional e mental. 
                    Manter os ombros para trás e a cabeça erguida simboliza sua disposição para enfrentar os desafios da vida com coragem. 
                    Esse ato comunica aos outros e a si mesmo que você é capaz de se posicionar diante das adversidades, 
                    criando uma base sólida para interações mais saudáveis e uma autoestima fortalecida.
                </p>
                <p>
                    2. Cuide de si mesmo como cuidaria de alguém que depende de você:
                    Muitas vezes, as pessoas negligenciam o próprio bem-estar enquanto cuidam zelosamente de outras pessoas. 
                    É essencial reconhecer o valor de si mesmo e agir em prol de sua saúde física, emocional e espiritual. 
                    Trate-se como trataria um amigo querido ou alguém sob sua responsabilidade, criando hábitos positivos e 
                    evitando autossabotagens.
                </p>
                <p>
                    3. Faça amizades com pessoas que queiram o melhor para você:
                    As amizades que cultivamos moldam quem nos tornamos. Esteja cercado de pessoas que desejam genuinamente o 
                    seu bem e incentivam seu crescimento. Evite aqueles que, intencionalmente ou não, reforçam padrões destrutivos. 
                    Amizades verdadeiras são aquelas que trazem honestidade, suporte e encorajamento mútuo.
                </p>
                <p>
                    4. Compare-se consigo mesmo, não com outra pessoa:
                    O hábito de se comparar constantemente com os outros pode ser prejudicial. Cada indivíduo trilha um caminho único, 
                    com desafios e oportunidades diferentes. Em vez disso, avalie quem você era ontem e procure ser uma versão melhor de 
                    si mesmo hoje. Essa abordagem promove progresso contínuo e uma mentalidade mais saudável.
                </p>
                <p>
                    5. Não deixe que seus filhos façam coisas que façam você não gostar deles:
                    Criar filhos não é apenas protegê-los, mas também ensiná-los a viver de maneira responsável e respeitável. Permitir 
                    comportamentos inadequados por medo de discipliná-los pode levar a consequências graves para eles e para a sociedade. 
                    Ensine limites e princípios claros, orientando-os com amor e firmeza para que se tornem adultos íntegros.
                </p>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-content">
        <ul class="autores">
                <h3>Autor</h3>
                <li> <img class="autoresImg" src="assets/img/github-mark.png"> <a href="https://github.com/Bryanjvo">Bryan</a></li>
            </ul>
            <ul>
                <h3>Contato</h3>
                <li> <img class="autoresImg" src="assets/img/telefone.png"> (61) 91234-5678</li>
                <li> <img class="autoresImg" src="assets/img/email.png"> <a style="color: white;" href="mailto:#">drogabryan@gmail.com</a></li>
            </ul>
            <ul>
                <h3>Endereço</h3>
                <li>CEP: 260.333-299</li>
                <li>CNB 10</li>
                <li>Taguatinga - Brasília/DF</li>
            </ul>
            <ul>
                <h3>Redes Sociais</h3>
                <li> <img class="autoresImg" src="assets/img/ig icon.png"> <a href="#">Instagram</a></li>
                <li> <img class="autoresImg" src="assets/img/whatsapp.png"> <a href="#">WhatsApp</a></li>
            </ul>
        </div>
    </footer>

</body>

</html>
