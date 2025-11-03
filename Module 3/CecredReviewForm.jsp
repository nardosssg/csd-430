<%--
Nardos Gebremedhin 
Module 3
11/02/2025

This is an interactive form for collecting yearly review for Cécred Hair Products 

 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cécred Hair Product - Yearly Product Review</title>
</head>
<body>

<h2>Cécred Hair Product - Yearly Product Review Form</h2>
 <p>We appreciate your loyalty! Please take a few minutes to share your yearly review of Cecred Hair Products. </p>
 
 
  <!-- review form, POST method -->
  
<form action="CecredReviewFeedback.jsp" method="post">


	  <!-- customer name input-->
	  <label for ="name">Full Name:</label>
	  <input type="text" id="name" name="name" required>
	  <br><br>
	
	   <!-- customer email input -->
	 <label for="email">Email Address:</label>
	 <input type="email" id="email" name="email" required>
	 <br><br>
  
   		<!-- product selection -->
        <label for="product">Select Cecred Product:</label>
        <select id="product" name="product" required>
            <option value="Hydrating Shampoo">Hydrating Shampoo</option>
            <option value="Moisture Sealing Conditioner">Moisture Sealing Conditioner</option>
            <option value="Nourishing Hair Oil">Nourishing Hair Oil</option>
            <option value="Deep Repair Mask">Deep Repair Mask</option>
            <option value="Leave-In Treatment">Leave-In Treatment</option>
        </select>
        <br><br>
        
         <!--  customer rating options-->
        <label>Overall Satisfaction:</label><br>
        <input type="radio" id="excellent" name="rating" value="Excellent" required>
        <label for="excellent">Excellent</label><br>
        <input type="radio" id="good" name="rating" value="Good">
        <label for="good">Good</label><br>
        <input type="radio" id="average" name="rating" value="Average">
        <label for="average">Average</label><br>
        <input type="radio" id="poor" name="rating" value="Poor">
        <label for="poor">Poor</label><br><br>
        
        <!-- num input for how long they used the products -->
        <label for="usageMonths">How many months have you used this product?</label>
        <input type="number" id="usageMonths" name="usageMonths" min="1" max="24" required>
        <br><br>
        
         <!-- text area for detailed review -->
        <label for="comments">Detailed Review or Suggestions:</label><br>
        <textarea id="comments" name="comments" rows="5" cols="50" placeholder="Share your experience..."></textarea>
        <br><br>
        
   		<!-- submit button -->
        <input type="submit" value="Submit Review">
</form>
  
</body>
</html>