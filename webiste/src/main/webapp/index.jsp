<%@ page import="domain.model.Vakantie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style/website.css">
</head>
<body>

<header>

    <nav>
        <ul>
            <li><a class="active" href="Controller?command=home">home</a></li>
            <li><a href="voegtoe.jsp">voeg toe</a> </li>
            <li><a href="Controller?command=overzicht">overzicht</a> </li>
            <li><a href="zoekForm.jsp">zoek een vakantie</a></li>
        </ul>
    </nav>
</header>
<main>
    <article>
        <h1> favoriete vakanties</h1>
        <p>Dit is een site om jouw favoriete vakanties met iedereen te delen.</p>
        <p>Druk gerust op <a href="voegtoe.jsp">voeg toe</a> om jouw favoriete vakantieplaatsen met ons te delen. Bij <a href="overzicht.jsp">overzicht</a> zie je welke vakantiebestemmingen andere mensen leuk vonden </p>

    </article>
</main>
</body>
</html>
