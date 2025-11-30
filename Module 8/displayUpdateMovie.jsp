<%--
Nardos Gebremedhin
Module 8
11/30/2025

This page processes the update and displays the updated movie record.
--%>

<%@ page import="movieBean.DbMoviBean, java.sql.*" %>

<html>
<head>
    <title>Movie Updated</title>
</head>
<body>

<h2>Movie Record Updated Successfully</h2>

<%
    int id = Integer.parseInt(request.getParameter("movieId"));
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String genre = request.getParameter("genre");
    int year = Integer.parseInt(request.getParameter("year"));
    double rating = Double.parseDouble(request.getParameter("rating"));

    DbMoviBean mb = new DbMoviBean();

    //update movie
    mb.updateMovie(id, title, director, genre, year, rating);

    //get updated record
    ResultSet rs = mb.getMovieById(id);
    rs.next();
%>

<table border="1">
    <thead>
        <tr>
            <th>Movie ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
    </tbody>
</table>

<br>
<form action="index.jsp">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
