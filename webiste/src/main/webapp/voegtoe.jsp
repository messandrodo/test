<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="style/website.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a class="active" href="Controllert?command=home">home</a></li>
            <li><a href="voegtoe.jsp">voeg toe</a> </li>
            <li><a href="Controller?command=overzicht">overzicht</a> </li>
            <li><a href="zoekForm.jsp">zoek een vakantie</a></li>
        </ul>
    </nav>
</header>
<article>
    <h1>voeg toe</h1>
<form method="POST" action="Controller?command=voegtoe" novalidate>

    <p><label for="Stad">Stad*</label>
        <input type="text" id="stad" name="stad"
               required>
    </p>
    <p><label for="Land">Land*</label>
        <input type="text" id="land"  name="land" required>
    </p>

    <p><label for="Rating">Rating:</label>
        <input id="rating" name="rating" type="number" max="10" min="1">

    </p>

    <p><input type="submit" value="voeg toe" id="submit"></p>


</form>
</article>


</body>
</html>