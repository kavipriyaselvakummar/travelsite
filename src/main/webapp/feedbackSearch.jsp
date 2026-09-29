<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="org.w3c.dom.Element" %>
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
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</header>

<section>
    <h2>Search Feedback</h2>

    <div class="form-container">
        <form action="feedbackSearch" method="get" id="feedbackSearchForm">
            <div class="form-group">
                <label for="rating">Show feedback with rating greater than:</label>
                <input type="number" id="rating" name="rating" min="0" max="5" placeholder="Enter rating (0-5)" required>
            </div>
            <button type="submit" class="btn-submit">Search Feedback</button>
        </form>
    </div>

    <%
    NodeList results = (NodeList) request.getAttribute("results");
    if (results != null) {
    %>

    <h3 style="text-align:center; margin-top:30px; margin-bottom:15px; color:var(--text-dark);">
        Search Results (<%= results.getLength() %> found)
    </h3>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Category</th>
                <th>Rating</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
        <%
        for (int i = 0; i < results.getLength(); i++) {
            Element feedback = (Element) results.item(i);
            String name = feedback.getElementsByTagName("name").item(0).getTextContent();
            String email = feedback.getElementsByTagName("email").item(0).getTextContent();
            String category = feedback.getElementsByTagName("category").item(0).getTextContent();
            String feedbackRating = feedback.getElementsByTagName("rating").item(0).getTextContent();
            String comment = feedback.getElementsByTagName("comment").item(0).getTextContent();
        %>
            <tr>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= category %></td>
                <td><%= feedbackRating %></td>
                <td><%= comment %></td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <% } %>
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

<script src="script.js"></script>
</body>
</html>