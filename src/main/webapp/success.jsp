<!DOCTYPE html>
<html>

<head>
    <title>Registration Success</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

<header>

    <a href="index.jsp" class="logo">
        ✈ TravelSite
    </a>

</header>

<section>

    <h2>Registration Successful!</h2>

    <p>
        Welcome,
        <strong><%= request.getAttribute("name") %></strong>
    </p>

    <p>
        Email:
        <strong><%= request.getAttribute("email") %></strong>
    </p>

    <p>
        Your TravelSite account has been registered successfully.
    </p>

    <a href="index.jsp">
        Go to Home
    </a>

</section>

</body>

</html>