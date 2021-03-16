<%@ page import="domain.model.Vakantie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>Title</title>
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
    <p>Je vroeg naar volgende gegevens: <%= vakantie.format() %></p>
</main>
</body>
</html>
