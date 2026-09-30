<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TravelSite - Explore The World</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <a href="index.jsp" class="logo">✈ TravelSite</a>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="destination.jsp">Destinations</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="feedbackSearch.jsp">Search</a>
        <a href="feedbacktable.jsp">Feedback Table</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</header>

<h2 id="welcome">Welcome to TravelSite</h2>

<section id="offerSection">
    <div class="offer-card">
        <p class="offer-tag">🔥 Limited Time Offer</p>
        <div id="offer"></div>
        <p class="offer-subtext">Book today and save on your dream vacation!</p>
    </div>
</section>

<section class="hero">
    <h1>Explore The World</h1>
    <p>Find your next adventure with us and create unforgettable memories.</p>
    <a href="destination.jsp" class="btn">View Destinations</a>
</section>

<section id="time">
    <h2>Welcome Traveller!</h2>
    <h3 id="greetings"></h3>
    <p id="clock"></p>
</section>

<section id="about">
    <h2>About Us</h2>
    <p>
        TravelSite helps you discover beautiful places around the world at affordable prices.
        Plan your next vacation with ease and peace of mind.
    </p>
    <blockquote>
        "The world is a book and those who do not travel read only one page."
        <br>
        <b>— Saint Augustine</b>
    </blockquote>
</section>

<footer>
    <p>© 2024 TravelSite · Made with JSP & Servlet</p>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="destination.jsp">Destinations</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="feedbackSearch.jsp">Search</a>
        <a href="feedbacktable.jsp">Feedback Table</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</footer>

<script src="script.js"></script>
</body>
</html>