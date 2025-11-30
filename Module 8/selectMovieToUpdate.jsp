<%-- 
Nardos Gebremedhin
Module 8
11/30/2025

This page displays a dropdown menu listing all movie IDs for updating.
The user selects a movie ID and is taken to updateMovieForm.jsp.
--%>

<%@ page import="movieBean.DbMoviBean, java.util.*" %>

<html>
<head>
    <title>Select Movie to Update</title>
</head>
<body>

<h2>Select a Movie to Update</h2>

<%
    DbMoviBean mb = new DbMoviBean();
    ArrayList<Integer> ids = mb.getMovieIds();
%>

<form action="updateMovieForm.jsp" method="post">
    <label>Select Movie ID:</label>
    <select name="movieId">
        <% for(Integer id : ids) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>

    <input type="submit" value="Load Movie">
</form>

<br>
<form action="index.jsp">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
