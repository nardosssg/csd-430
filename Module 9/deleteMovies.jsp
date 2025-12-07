<%--
Nardos Gebremedhin
Module 9
12/7/2025

Displays all movie records in table format
Provides a dropdown list of movie IDs for deleting a record

--%>

<%@ page import="movieBean.DbMoviBean" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Delete Movies</title>
</head>
<body>

<h2>Movie Records - Delete a Movie</h2>
<p>Select a movie ID from the dropdown to delete it.</p>

<%
    DbMoviBean mb = new DbMoviBean();
    ResultSet rs = mb.getAllMovies();

    // Get IDs separately
    ResultSet rsIds = mb.getAllMovies();
%>

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
    boolean hasRows = false;
    while (rs.next()) {
        hasRows = true;
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
    if (!hasRows) {
%>
        <tr><td colspan="6">No movie records remain.</td></tr>
<%
    }
%>
    </tbody>
</table>

<br><br>

<form action="displayDeleteMovies.jsp" method="post">
    <label><b>Select Movie ID to Delete:</b></label>
    <select name="deleteId">
<%
    while (rsIds.next()) {
%>
        <option value="<%= rsIds.getInt("movie_id") %>">
            <%= rsIds.getInt("movie_id") %>
        </option>
<%
    }
%>
    </select>

    <br><br>
    <input type="submit" value="Delete Movie">
</form>

<br><br>
<form action="index.jsp" method="get">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
