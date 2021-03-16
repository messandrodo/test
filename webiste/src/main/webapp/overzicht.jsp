<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="domain.model.Vakantie"%>
<%@ page import="java.util.ArrayList" %>

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
        <h1>Overzicht</h1>
        <table id="overzicht">
            <tr id="headtable">
                <th>Stad</th>
                <th>Land</th>
                <th>Rating</th>
                <th><u>pas aan</u></th>
                <th><u>verwijder</u></th>
            </tr>
            <% ArrayList<Vakantie> vakanties = (ArrayList<Vakantie>) request.getAttribute("vakanties");
                for(Vakantie v: vakanties){

            %>
            <tr>
                <th><%=v.getStad()%></th>
                <th><%=v.getLand()%></th>
                <th><%=v.getRating()%></th>
                <th>pas aan</th>
                <th><a href="Controller?command=verwijderBevestiging&stad=<%=v.getStad()%>">verwijder</a> </th>
            </tr>
            <%
                }
            %>



                </table>

    </article>

</main>

</body>
</html>