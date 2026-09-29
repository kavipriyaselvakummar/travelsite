<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Element" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results - TravelSite</title>
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
    <h2>Feedback with Rating Greater Than ${rating}</h2>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Rating</th>
                <th>Category</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
        <%
        NodeList results = (NodeList) request.getAttribute("results");
        if (results != null && results.getLength() > 0) {
            for (int i = 0; i < results.getLength(); i++) {
                Element feedback = (Element) results.item(i);
        %>
            <tr>
                <td><%= feedback.getElementsByTagName("name").item(0).getTextContent() %></td>
                <td><%= feedback.getElementsByTagName("email").item(0).getTextContent() %></td>
                <td><%= feedback.getElementsByTagName("rating").item(0).getTextContent() %></td>
                <td><%= feedback.getElementsByTagName("category").item(0).getTextContent() %></td>
                <td><%= feedback.getElementsByTagName("comment").item(0).getTextContent() %></td>
            </tr>
        <%
            }
        } else {
        %>
            <tr>
                <td colspan="5" style="text-align:center;">No feedback found matching the criteria.</td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <div style="text-align:center; margin-top: 25px;">
        <a href="feedbackSearch.jsp" class="btn">Search Again</a>
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