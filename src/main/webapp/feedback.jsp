<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>TravelSite Feedback</title>

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

<h2>TravelSite Feedback</h2>


<form action="feedback" method="post">


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


<label>Rating</label>

<select name="rating" required>

    <option value="">Select Rating</option>

    <option value="1">1 - Poor</option>

    <option value="2">2 - Fair</option>

    <option value="3">3 - Good</option>

    <option value="4">4 - Very Good</option>

    <option value="5">5 - Excellent</option>

</select>


<label>Category</label>

<select name="category" required>

    <option value="">Select Category</option>

    <option value="Website">Website</option>

    <option value="Destination">Destination</option>

    <option value="Booking">Booking</option>

    <option value="Service">Service</option>

</select>


<label>Comment</label>

<textarea
    name="comment"
    rows="5"
    placeholder="Enter your feedback"
    required></textarea>


<button type="submit">

Submit Feedback

</button>


</form>

</section>


<footer>

<p>© 2024 TravelSite · XML Feedback System</p>

</footer>

</body>

</html>