<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Sent - TravelSite</title>
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
        <h2>Message Sent Successfully!</h2>

        <div class="form-group" style="text-align: left;">
            <label>Name</label>
            <input type="text" value="${name}" readonly>
        </div>

        <div class="form-group" style="text-align: left;">
            <label>Email</label>
            <input type="email" value="${email}" readonly>
        </div>

        <div class="form-group" style="text-align: left;">
            <label>Your Message</label>
            <textarea rows="4" readonly>${message}</textarea>
        </div>

        <div style="margin-top:20px;">
            <a href="index.jsp" class="btn">Back to Home</a>
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
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</footer>

</body>
</html>