<%--
Nardos Gebremedhin
Module 7
11/20/2025

this page displays all the movies including the new ones
--%>

<%@ page import="movieBean.DbMoviBean" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Movie Added</title>
</head>
<body>

<%
    // Get user input
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String genre = request.getParameter("genre");
    String year = request.getParameter("year");
    String rating = request.getParameter("rating");

    DbMoviBean mb = new DbMoviBean();

    // insert movie using the JavaBean
    mb.addMovie(title, director, genre, Integer.parseInt(year), Double.parseDouble(rating));

    // get all movies
    ResultSet rs = mb.getAllMovies();
%>

<h2>Movie Successfully Added</h2>
<p>The following table shows all movies currently stored in the database.</p>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Rating</th>
        </tr>
    </thead>

    <tbody>
<%
    while (rs.next()) {
%>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
<%
    }
%>
    </tbody>
</table>

<br>
<form action="addMovie.jsp" method="get">
    <input type="submit" value="Add Another Movie">
</form>

<form action="index.jsp" method="get">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
