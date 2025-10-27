<%--
Nardos Gebremedhin 
Module 2
10/26/2025

This jsp file will display a table of my favorite places visited in Japan
using JSP scriptlets and HTML with external CSS styling

 --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Japan Trip</title>
<!-- link to external css -->
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<!-- Header -->
<h1> My Summer Vacation to Japan</h1>

<!-- Intro section -->
<p class="description"> This page will list the activities I participated in during my visit to Japan. </p>

<%

//java code holding data about japan activities
// each record has 3 fields: city, activity and location

String[][] japanActivities ={
		
		 {"Tokyo", "Shopping", "Shibuya"},
	     {"Tokyo", "Food", "Street Food at Harajuku"},
	     {"Tokyo", "Sightseeing", "Tokyo Tower, Asakusa Temple"},
	     {"Fukuoka", "Food", "Hakata Station"},
	     {"Tokyo", "Sightseeing", "Shinjuku Gyoen National Garden"}
};


%>

<!-- HTML Table to display the activities  -->

<!-- header tables  -->
<table>
    <tr>
        <th>City</th>
        <th>Activity</th>
        <th>Location</th>
    </tr>
<%
// loop to go through the activities 
    for(int i = 0; i < japanActivities.length; i++) {
%>
    <tr>
        <td><%= japanActivities[i][0] %></td> <!-- city -->
        <td><%= japanActivities[i][1] %></td> <!-- activities -->
        <td><%= japanActivities[i][2] %></td> <!-- location -->
    </tr>
<%
    } // end for loop
%>
</table>






</body>
</html>