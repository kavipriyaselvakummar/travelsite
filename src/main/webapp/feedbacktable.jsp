<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Feedback Summary</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

    <a href="index.jsp" class="logo">✈ TravelSite</a>

    <nav>
        <a href="index.jsp">Home</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="feedbackSearch.jsp">Search Feedback</a>
    </nav>

</header>

<section>

<%

try {

    String xmlPath =
        application.getRealPath("/feedback.xml");

    String xslPath =
        application.getRealPath("/feedback.xsl");

    TransformerFactory factory =
        TransformerFactory.newInstance();

    Transformer transformer =
        factory.newTransformer(
            new StreamSource(xslPath));

    StringWriter writer =
        new StringWriter();

    transformer.transform(
        new StreamSource(xmlPath),
        new StreamResult(writer));

    out.println(writer.toString());

}
catch(Exception e) {

    out.println(
        "<h3>Error: " +
        e.getMessage() +
        "</h3>");

}

%>

</section>

</body>

</html>