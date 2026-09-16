<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Feedback Submitted</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

    <a href="index.jsp" class="logo">✈ TravelSite</a>

    <nav>
        <a href="index.jsp">Home</a>
        <a href="destination.jsp">Destinations</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
        <a href="feedback.jsp">Feedback</a>
    </nav>

</header>

<section>

<h2 style="color:green;text-align:center;">

Feedback Submitted Successfully!

</h2>

<form>

<label>Name</label>

<input type="text"
       value="${name}"
       readonly>


<br>

<p style="text-align:center;">

Thank you for your valuable feedback!

</p>

<br>

<div style="text-align:center;">

<a href="feedback.jsp" class="btn">
Give Another Feedback
</a>

<br><br>

<a href="feedbacktable.jsp" class="btn">
View All Feedback
</a>

</div>

</form>

</section>

<footer>

<p>© 2024 TravelSite · XML Feedback System</p>

</footer>

</body>

</html>