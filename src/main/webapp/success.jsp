<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success - TravelSite</title>
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

<section>
    <div class="success-box">
        <h2>Registration Successful!</h2>

        <p>Welcome, <strong><%= request.getAttribute("name") != null ? request.getAttribute("name") : "" %></strong></p>

        <p>Email: <strong><%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %></strong></p>

        <p style="margin-top: 15px;">Your TravelSite account has been registered successfully.</p>

        <div style="margin-top: 25px;">
            <a href="index.jsp" class="btn">Go to Home</a>
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

</body>
</html>