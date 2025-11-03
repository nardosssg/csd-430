<%--
Nardos Gebremedhin 
Module 3
11/02/2025

This is jsp file will process and display the subbmitted Cécred Hair Products
 feedback from customers from the CecredReviewFeedback form 

 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cecred Product Review Results</title>
</head>
<body>
  <h2>Cecred Hair Products - Review Summary</h2>
    <p>Thank you for taking the time to review our Cecred products! Below is a summary of your submitted feedback.</p>


 <%-- Retrieve the submitted form data --%>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String product = request.getParameter("product");
        String rating = request.getParameter("rating");
        String usageMonths = request.getParameter("usageMonths");
        String comments = request.getParameter("comments");
    %>

    <!-- Display user-submitted data in a clean HTML table -->
    <table border="1" cellpadding="10" cellspacing="0">
        <tr><th>Field</th><th>Information Provided</th></tr>
        <tr><td>Full Name</td><td><%= name %></td></tr>
        <tr><td>Email Address</td><td><%= email %></td></tr>
        <tr><td>Product Reviewed</td><td><%= product %></td></tr>
        <tr><td>Overall Satisfaction</td><td><%= rating %></td></tr>
        <tr><td>Months of Usage</td><td><%= usageMonths %></td></tr>
        <tr><td>Detailed Review / Suggestions</td><td><%= comments %></td></tr>
    </table>

    <br>
    <p>We value your insights and will continue to make Cecred products even better for your hair care journey.</p>

    <p><a href="CecredReviewForm.jsp">Submit Another Review</a></p>
</body>
</html>