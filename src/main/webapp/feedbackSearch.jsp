<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="org.w3c.dom.Element" %>

<!DOCTYPE html>

<html>

<head>

<title>Feedback Search</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

<a href="index.jsp" class="logo">
✈ TravelSite
</a>

<nav>

<a href="index.jsp">Home</a>
<a href="destination.jsp">Destinations</a>
<a href="feedback.jsp">Feedback</a>
<a href="feedbackSearch.jsp">Search</a>

</nav>

</header>

<section>

<h2>Search Feedback</h2>

<form action="feedbackSearch" method="get">

<label>
Show feedback with rating greater than:
</label>

<input
type="number"
name="rating"
min="0"
max="5"
required>

<button type="submit">

Search

</button>

</form>

<br><br>

<%

NodeList results =
    (NodeList) request.getAttribute("results");

if (results != null) {

%>

<table border="1"
       style="width:100%;border-collapse:collapse;">

<tr>

<th>Name</th>
<th>Email</th>
<th>Category</th>
<th>Rating</th>
<th>Comment</th>

</tr>

<%

for (int i = 0;
     i < results.getLength();
     i++) {

    Element feedback =
        (Element) results.item(i);

    String name =
        feedback
        .getElementsByTagName("name")
        .item(0)
        .getTextContent();

    String email =
        feedback
        .getElementsByTagName("email")
        .item(0)
        .getTextContent();

    String category =
    	    feedback
    	    .getElementsByTagName("category")
    	    .item(0)
    	    .getTextContent();

    String feedbackRating =
        feedback
        .getElementsByTagName("rating")
        .item(0)
        .getTextContent();

    String comment =
        feedback
        .getElementsByTagName("comment")
        .item(0)
        .getTextContent();

%>

<tr>

<td><%= name %></td>

<td><%= email %></td>

<td><%= category %></td>

<td><%= feedbackRating %></td>

<td><%= comment %></td>

</tr>

<%

}

%>

</table>

<p>
Number of matching feedback:
<%= results.getLength() %>
</p>

<%

}

%>

</section>

</body>

</html>