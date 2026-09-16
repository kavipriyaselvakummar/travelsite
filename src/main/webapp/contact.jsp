<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>

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

<h2>Contact Us</h2>

<form action="contact" method="post">

<label>Name</label>

<input
type="text"
name="name"
placeholder="Enter your name"
required>

<label>Email</label>

<input
type="email"
name="email"
placeholder="Enter your email"
required>

<label>Message</label>

<textarea
name="message"
rows="5"
placeholder="Enter your message"
required></textarea>

<button type="submit">

Send Message

</button>

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

<script src="script.js"></script>

</body>
</html>