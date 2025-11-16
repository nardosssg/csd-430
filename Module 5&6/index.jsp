<%--
Nardos Gebremedhin 
Module 5 & 6
11/15/2025

This is the main landing page for the CSD430 project.
It contains links to all module deliverables including:
- Movie selection page
- Display movie page


 --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie Project - Index</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #2F4F4F; }
        ul { list-style-type: none; padding: 0; }
        li { margin: 10px 0; }
        a { text-decoration: none; color: #1E90FF; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <h1>Movie Project - Index</h1>
    <p>Welcome! Use the links below to access each part of the project.</p>

    <ul>
        <!-- link to the drop down page for selecting movies -->
        <li><a href="selectMovie.jsp" target="_blank">Select a Movie (Drop down)</a></li>

        <!-- link to display results -->
        <li><a href="displayMovie.jsp" target="_blank">Display Movie Details</a></li>

    </ul>

</body>
</html>
