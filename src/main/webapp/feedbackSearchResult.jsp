<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Element" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Search Results</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

    <a href="index.jsp" class="logo">
        ✈ TravelSite
    </a>

    <nav>

        <a href="index.jsp">Home</a>

        <a href="feedback.jsp">Feedback</a>

        <a href="feedbackSearch.jsp">
            Search
        </a>

    </nav>

</header>


<section>

<h2>
Feedback with Rating Greater Than ${rating}
</h2>


<table style="
    width:90%;
    margin:auto;
    border-collapse:collapse;
    background:white;
">

<tr>

<th style="padding:12px;background:#0077b6;color:white;">
Name
</th>

<th style="padding:12px;background:#0077b6;color:white;">
Email
</th>

<th style="padding:12px;background:#0077b6;color:white;">
Rating
</th>

<th style="padding:12px;background:#0077b6;color:white;">
Category
</th>

<th style="padding:12px;background:#0077b6;color:white;">
Comment
</th>

</tr>


<%

NodeList results =
    (NodeList) request.getAttribute("results");


for(int i = 0; i < results.getLength(); i++) {

    Element feedback =
        (Element) results.item(i);

%>

<tr>

<td style="padding:10px;border:1px solid #ccc;">
<%= feedback
    .getElementsByTagName("name")
    .item(0)
    .getTextContent() %>
</td>


<td style="padding:10px;border:1px solid #ccc;">
<%= feedback
    .getElementsByTagName("email")
    .item(0)
    .getTextContent() %>
</td>


<td style="padding:10px;border:1px solid #ccc;">
<%= feedback
    .getElementsByTagName("rating")
    .item(0)
    .getTextContent() %>
</td>


<td style="padding:10px;border:1px solid #ccc;">
<%= feedback
    .getElementsByTagName("category")
    .item(0)
    .getTextContent() %>
</td>


<td style="padding:10px;border:1px solid #ccc;">
<%= feedback
    .getElementsByTagName("comment")
    .item(0)
    .getTextContent() %>
</td>

</tr>

<%

}

%>

</table>

</section>


<footer>

<p>
© 2024 TravelSite · XML Feedback System
</p>

</footer>

</body>

</html>