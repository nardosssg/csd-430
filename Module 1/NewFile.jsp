<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First JSP File</title>
<%-- Nardos Gebremedhin --%>
<%-- 10/26/2025 --%>
<%-- Module 1
Just a JSP file with java code and HTML tags 
I did ask chatgpt to assist me with setting up eclipse and how to comment in the jsp--%>
</head>
<body>
<h1> Hi, my name is Nardos and this is my first jsp file </h1>
<p> 
  <%
            // java code 
            String message = "I can't wait to start this class!";
            out.println(message);
        %>
   
</p>
</body>
</html>