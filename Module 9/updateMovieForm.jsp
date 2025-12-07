<%--
Nardos Gebremedhin
Module 8
11/30/2025

This page loads the selected movie into a form.
All values are editable except movie_id.
--%>

<%@ page import="movieBean.DbMoviBean, java.sql.*" %>

<html>
<head><title>Update Movie</title></head>
<body>

<h2>Update Movie Record</h2>

<%
    int id = Integer.parseInt(request.getParameter("movieId"));
    DbMoviBean mb = new DbMoviBean();
    ResultSet rs = mb.getMovieById(id);
    rs.next();
%>

<form action="displayUpdateMovie.jsp" method="post">

    <p><strong>Movie ID (Not Editable):</strong> <%= id %></p>
    <input type="hidden" name="movieId" value="<%= id %>">

    Title:<br>
    <input type="text" name="title" value="<%= rs.getString("title") %>"><br><br>

    Director:<br>
    <input type="text" name="director" value="<%= rs.getString("director") %>"><br><br>

    Genre:<br>
    <input type="text" name="genre" value="<%= rs.getString("genre") %>"><br><br>

    Release Year:<br>
    <input type="number" name="year" value="<%= rs.getInt("release_year") %>"><br><br>

    Rating:<br>
    <input type="number" name="rating" step="0.1" value="<%= rs.getDouble("rating") %>"><br><br>

    <input type="submit" value="Update Movie">
</form>

<br>
<form action="index.jsp">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
