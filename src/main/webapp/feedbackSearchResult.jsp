<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.xpath.XPath" %>
<%@ page import="javax.xml.xpath.XPathConstants" %>
<%@ page import="javax.xml.xpath.XPathFactory" %>
<%@ page import="java.io.File" %>

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
        <a href="feedbacktable.jsp">Feedback Table</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</header>

<section>
<%
    NodeList results = (NodeList) request.getAttribute("results");
    String rating = (String) request.getAttribute("rating");

    if (rating == null || rating.trim().isEmpty()) {
        rating = request.getParameter("rating");
    }
    if (rating == null || rating.trim().isEmpty()) {
        rating = "3";
    }

    if (results == null) {
        try {
            String path = application.getRealPath("/feedback.xml");
            File file = new File(path);
            if (file.exists() && file.length() > 0) {
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                DocumentBuilder builder = factory.newDocumentBuilder();
                Document document = builder.parse(file);

                XPathFactory xpathFactory = XPathFactory.newInstance();
                XPath xpath = xpathFactory.newXPath();
                String expression = "/feedbacks/feedback[number(rating) > " + rating + "]";
                results = (NodeList) xpath.evaluate(expression, document, XPathConstants.NODESET);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<h2>Feedback with Rating Greater Than <%= rating %></h2>

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
    if (results != null && results.getLength() > 0) {
        for (int i = 0; i < results.getLength(); i++) {
            Element feedback = (Element) results.item(i);
            String name = feedback.getElementsByTagName("name").getLength() > 0 ? feedback.getElementsByTagName("name").item(0).getTextContent() : "";
            String email = feedback.getElementsByTagName("email").getLength() > 0 ? feedback.getElementsByTagName("email").item(0).getTextContent() : "";
            String feedbackRating = feedback.getElementsByTagName("rating").getLength() > 0 ? feedback.getElementsByTagName("rating").item(0).getTextContent() : "";
            String category = feedback.getElementsByTagName("category").getLength() > 0 ? feedback.getElementsByTagName("category").item(0).getTextContent() : "";
            String comment = feedback.getElementsByTagName("comment").getLength() > 0 ? feedback.getElementsByTagName("comment").item(0).getTextContent() : "";
%>
        <tr>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= feedbackRating %></td>
            <td><%= category %></td>
            <td><%= comment %></td>
        </tr>
<%
        }
    } else {
%>
        <tr>
            <td colspan="5" style="text-align:center;">
                No feedback found with rating greater than <%= rating %>.
            </td>
        </tr>
<%
    }
%>
    </tbody>
</table>

<div style="text-align:center; margin-top:25px;">
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
        <a href="feedbacktable.jsp">Feedback Table</a>
        <a href="contact.jsp">Contact</a>
        <a href="register.jsp">Register</a>
    </nav>
</footer>

</body>
</html>