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
<main id="container">
    <article>
        <h1>Zoek een vakantie</h1>
        <form method="Get" action="Controller" novalidate>

            <p class="form-group">
                <label class="control-label" for="Land">Land: </label> <input
                    id="Land" name="Land" type="text" value="" required>
            </p>
            <p class="form-group">
                <label class="control-label" for="Stad">Stad: </label> <input
                    id="Stad" name="stad" type="text" value="">
            </p>

            <p>
                <label for="zoek">&nbsp;</label> <input id="zoek" type="submit"
                                                        value="Vind Vakantie">
            </p>

        </form>
    </article>
</main>
</body>
</html>
