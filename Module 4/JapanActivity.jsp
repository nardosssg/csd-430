<%-- 
Nardos Gebremedhin
Module 4
11/09/2025

This JSP file uses a javaBean (japanBean) to hold data about activities from my Japan trip
and displays it in a formatted HTML table using scriptlets and HTML.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, japanBeans.JapanActivity" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Japan Trip Activities</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<h1>My Japan Adventure Highlights</h1>
<p class="description">Below are the memorable activities I enjoyed during my trip to Japan.</p>

<%
// create a list of JapanActivityBean objects
    List<JapanActivity> activityList = new ArrayList<>();

    activityList.add(new JapanActivity("Tokyo", "Shopping", "Shibuya", "2025-07-12", "★★★★★"));
    activityList.add(new JapanActivity("Tokyo", "Food", "Street Food at Harajuku", "2025-07-13", "★★★★★"));
    activityList.add(new JapanActivity("Tokyo", "Sightseeing", "Tokyo Tower, Asakusa Temple", "2025-07-14", "★★★★☆"));
    activityList.add(new JapanActivity("Fukuoka", "Food", "Hakata Station", "2025-07-18", "★★★★☆"));
    activityList.add(new JapanActivity("Tokyo", "Sightseeing", "Shinjuku Gyoen National Garden", "2025-07-19", "★★★★★"));
%>

<!-- HTML Table -->
<table border="1" cellpadding="8" cellspacing="0">
    <tr style="background-color:#f0f0f0;">
        <th>City</th>
        <th>Activity</th>
        <th>Location</th>
        <th>Date</th>
        <th>Rating</th>
    </tr>

<%
// loop through list and display each bean data
    for (JapanActivity a : activityList) {
%>
    <tr>
        <td><%= a.getCity() %></td>
        <td><%= a.getActivity() %></td>
        <td><%= a.getLocation() %></td>
        <td><%= a.getDate() %></td>
        <td><%= a.getRating() %></td>
    </tr>
<%
    }
%>
</table>


</body>
</html>
