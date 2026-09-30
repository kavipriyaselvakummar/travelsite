<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Popular Destinations - TravelSite</title>
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

<section id="destinations">
    <h2>Popular Destinations</h2>

    <div class="cards">
        <article>
            <img src="images/japanese_landscape.jpg" alt="Japan">
            <h3>Japan</h3>
            <p>A peaceful island full of temples, beaches, and rich cultural heritage.</p>
        </article>

        <article>
            <img src="images/purple.webp" alt="Garden">
            <h3>Garden Paradise</h3>
            <p>Experience beautiful flowers, lush green trees, and tranquil nature.</p>
        </article>

        <article>
            <img src="images/green.webp" alt="Snowland">
            <h3>Snowland Valleys</h3>
            <p>Enjoy snow-covered mountains, skiing resorts, and breathtaking views.</p>
        </article>
    </div>
</section>

<section>
    <h2>Must Visit Places</h2>

    <div class="slider-container">
        <div class="places">
            <img src="images/img1.jfif" alt="Kerala">
            <img src="images/img2.jfif" alt="Egypt">
            <img src="images/img3.png" alt="USA">
            <img src="images/img4.jfif" alt="Waterfall">
            <img src="images/img5.jfif" alt="Nepal">
            <img src="images/img6.jfif" alt="Nature">
            <img src="images/taj.avif" alt="Taj Mahal">
        </div>
    </div>
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