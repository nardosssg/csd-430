<%--
Nardos Gebremedhin
Module 9 
12/7/2025

Deletes the selected movie ID then redisplays updated records and dropdown.
--%>

<%@ page import="movieBean.DbMoviBean" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Record Deleted</title>
</head>
<body>

<%
    DbMoviBean mb = new DbMoviBean();

    String idStr = request.getParameter("deleteId");

    if (idStr != null && !idStr.isEmpty()) {
        mb.deleteMovie(Integer.parseInt(idStr));
    }

    // Reload updated movie list
    ResultSet rs = mb.getAllMovies();
    ResultSet rsIds = mb.getAllMovies();
%>

<h2>Movie Deleted Successfully</h2>
<p>The updated list of movies appears below.</p>

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
        <tr><td colspan="6">All records have been deleted.</td></tr>
<%
    }
%>
    </tbody>
</table>

<br><br>

<% if (hasRows) { %>
<form action="processDelete.jsp" method="post">
    <label><b>Select Another Movie ID to Delete:</b></label>
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
    <input type="submit" value="Delete Another Movie">
</form>

<% } %>

<br><br>
<form action="index.jsp">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
