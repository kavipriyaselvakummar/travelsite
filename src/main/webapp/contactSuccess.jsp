<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Sent Successfully</title>

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
    </nav>

</header>

<section>

<h2 style="text-align:center;color:green;">

Message Sent Successfully!

</h2>

<form>

<label>Name</label>

<input
type="text"
value="${name}"
readonly>

<label>Email</label>

<input
type="email"
value="${email}"
readonly>

<label>Your Message</label>

<textarea
rows="5"
readonly>${message}</textarea>

<br><br>

<div style="text-align:center;">

<a href="index.jsp" class="btn">

Back to Home

</a>

</div>

</form>

</section>

<footer>

<p>

© 2024 TravelSite · Made with JSP & Servlet

</p>

<nav>

<a href="index.jsp">Home</a>

<a href="destination.jsp">Destinations</a>

<a href="contact.jsp">Contact</a>

<a href="register.jsp">Register</a>

</nav>

</footer>

</body>

</html>