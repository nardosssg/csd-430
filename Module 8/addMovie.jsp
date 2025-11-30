<%--
Nardos Gebremedhin
Module 7
11/20/2025

    This page gathers user input to add a new movie record.
--%>

<html>
<head><title>Add a New Movie</title></head>
<body>

<h2>Add a New Movie Record</h2>
<p>Please enter all required movie details below.</p>

<form action="displayAddMovie.jsp" method="post">

    <label>Title:</label><br>
    <input type="text" name="title" required><br><br>

    <label>Director:</label><br>
    <input type="text" name="director" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="year" required><br><br>

    <label>Rating:</label><br>
    <input type="number" step="0.1" name="rating" required><br><br>

    <input type="submit" value="Add Movie">

</form>

<br>
<form action="index.jsp" method="get">
    <input type="submit" value="Back to Index">
</form>

</body>
</html>
