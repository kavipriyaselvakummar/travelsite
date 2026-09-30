<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Search - TravelSite</title>
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

    <h2>Search Feedback</h2>

    <div class="form-container">

        <form action="feedbackSearchResult.jsp" method="get">

            <div class="form-group">

                <label for="rating">
                    Show feedback with rating greater than:
                </label>

                <input
                    type="number"
                    id="rating"
                    name="rating"
                    min="0"
                    max="5"
                    placeholder="Enter rating (0-5)"
                    required>

            </div>

            <button type="submit" class="btn-submit">
                Search Feedback
            </button>

        </form>

    </div>

</section>


<footer>

    <p>© 2024 TravelSite · XML Feedback System</p>

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