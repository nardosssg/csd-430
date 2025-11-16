<%--
Nardos Gebremedhin
Module 5 & 6
11/15/2025
 

This JSP page displays the movie details in an HTML table with headers for:
ID, Title, Director, Genre, Year, and Rating.
--%>

<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>
<%
    String selected = request.getParameter("movieId");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

    PreparedStatement ps;
    if (selected == null || selected.isEmpty() || "all".equals(selected)) {
        ps = con.prepareStatement("SELECT * FROM nardos_movies_data");
    } else {
        ps = con.prepareStatement("SELECT * FROM nardos_movies_data WHERE movie_id = ?");
        ps.setInt(1, Integer.parseInt(selected));
    }

    ResultSet rs = ps.executeQuery();
%>

<h2>Movie Details <%= ("all".equals(selected) || selected == null) ? "List" : "" %></h2>

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
    while(rs.next()) {
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
    if(!hasRows) {
%>
        <tr><td colspan="6">No data found.</td></tr>
<%
    }
    rs.close();
    ps.close();
    con.close();
%>
    </tbody>
</table>

<br>
<form action="selectMovie.jsp" method="get">
    <input type="submit" value="Back to Movie Selection">
</form>

<!-- back to index Page -->
<form action="index.jsp" method="get" style="display:inline;">
    <input type="submit" value="Back to Index">
</form>
</body>
</html>
