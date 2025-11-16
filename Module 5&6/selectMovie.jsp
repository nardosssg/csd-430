<%--
Nardos Gebremedhin
Module 5 & 6
11/15/2025


This JSP page displays a dropdown menu listing all movie IDs from the database.
The user selects a movie ID and submits the form.
The form submission forwards the selected ID to displayMovie.jsp to show movie details
--%>


<%@ page import="java.util.*, java.sql.*" %>
<%@ page import="movieBean.DbMoviBean" %>
<html>
<head><title>Select a Movie</title></head>
<body>
<h2>Select a Movie</h2>

<%
     DbMoviBean mb = new DbMoviBean();
    ArrayList<Integer> movieIds = mb.getMovieIds();
%>

<form action="displayMovie.jsp" method="post">
    <label for="movieId">Movie ID:</label>
    <select name="movieId" id="movieId">
        <% for(Integer id : movieIds) { %>
            <option value="<%=id%>"><%=id%></option>
        <% } %>
    </select>
    <input type="submit" value="Submit">
</form>

<!-- back to index Page -->
<form action="index.jsp" method="get" style="display:inline;">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
