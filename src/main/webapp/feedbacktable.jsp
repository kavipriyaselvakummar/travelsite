<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Summary - TravelSite</title>
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
<%
try {
    String xmlPath = application.getRealPath("/feedback.xml");
    String xslPath = application.getRealPath("/feedback.xsl");

    TransformerFactory factory = TransformerFactory.newInstance();
    Transformer transformer = factory.newTransformer(new StreamSource(xslPath));
    StringWriter writer = new StringWriter();

    transformer.transform(new StreamSource(xmlPath), new StreamResult(writer));
    out.println(writer.toString());
}
catch(Exception e) {
    out.println("<div class='error-msg' style='text-align:center;'>Error loading feedback summary: " + e.getMessage() + "</div>");
}
%>
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