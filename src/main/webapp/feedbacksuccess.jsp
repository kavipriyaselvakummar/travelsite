<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Submitted - TravelSite</title>
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
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</header>

<section>
    <div class="success-box">
        <h2>Feedback Submitted Successfully!</h2>

        <p>Thank you <strong>${name}</strong> for your valuable feedback!</p>

        <div style="margin-top: 25px; display: flex; flex-direction: column; gap: 12px; align-items: center;">
            <a href="feedback.jsp" class="btn" style="width: 240px;">Give Another Feedback</a>
            <a href="feedbacktable.jsp" class="btn" style="width: 240px; background: var(--text-dark);">View All Feedback</a>
        </div>
    </div>
</section>

<footer>
    <p>© 2024 TravelSite · XML Feedback System</p>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="destination.jsp">Destinations</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="feedbackSearch.jsp">Search</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</footer>

</body>
</html>