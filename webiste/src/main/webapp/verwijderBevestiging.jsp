<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>verwijderBevestiging</title>
    <link type="text/css" href="style/website.css" rel="stylesheet" />
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
    <article>
        <h2>Bevestiging</h2>
        <p>Ben je zeker dat je je vakantie in de stad <%= request.getParameter("stad")%> wil verwijderen?</p>
        <form action="Controller?command=verwijder&stad=<%= request.getParameter("stad")%>" method="POST">
            <input type="submit" value="Ja"/>
        </form>
        <p><a href="Controller?command=overzicht">annulleer</a> indien je <%=request.getParameter("stad")%> niet wilt verwijderen </p>
    </article>

</body>
</html>
