<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TravelSite - Registration</title>
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

<section class="form-container">
    <h2>TravelSite Registration</h2>

    <form id="registerForm" action="register" method="post">
        <!-- NAME -->
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name">
            <span id="nameError" class="error-msg" style="color:red;"></span>
        </div>

        <!-- EMAIL -->
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address">
            <span id="emailError" class="error-msg" style="color:red;"></span>
        </div>

        <!-- PASSWORD -->
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password">
            <span id="passwordError" class="error-msg" style="color:red;"></span>
        </div>

        <!-- GENDER -->
        <div class="form-group">
            <label>Gender</label>
            <div class="radio-group">
                <input type="radio" id="male" name="gender" value="male">
                <label for="male">Male</label>

                <input type="radio" id="female" name="gender" value="female">
                <label for="female">Female</label>
            </div>
            <span id="genderError" class="error-msg" style="color:red;"></span>
        </div>

        <!-- REGISTER BUTTON -->
        <button type="submit" class="btn-submit">Register</button>
    </form>

    <p id="ajaxMessage" style="color:green; font-weight:bold; margin-top:15px; text-align:center;"></p>
</section>

<footer>
    <p>© 2024 TravelSite · Made with JSP & Servlet</p>
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
<script>
document.addEventListener("DOMContentLoaded", function() {
    var regForm = document.getElementById("registerForm");
    if (regForm) {
        regForm.addEventListener("submit", function(event) {
            // Prevent submission until validated locally
            event.preventDefault();

            var nameInput = document.getElementById("name");
            var emailInput = document.getElementById("email");
            var passwordInput = document.getElementById("password");

            var name = nameInput ? nameInput.value.trim() : "";
            var email = emailInput ? emailInput.value.trim() : "";
            var password = passwordInput ? passwordInput.value : "";

            // Clear previous errors
            document.getElementById("nameError").innerHTML = "";
            document.getElementById("emailError").innerHTML = "";
            document.getElementById("passwordError").innerHTML = "";
            document.getElementById("ajaxMessage").innerHTML = "";

            var isValid = true;

            if (name === "") {
                document.getElementById("nameError").innerHTML = "Please enter your name.";
                isValid = false;
            }

            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (email === "") {
                document.getElementById("emailError").innerHTML = "Please enter your email.";
                isValid = false;
            } else if (!emailPattern.test(email)) {
                document.getElementById("emailError").innerHTML = "Please enter a valid email address.";
                isValid = false;
            }

            if (password === "") {
                document.getElementById("passwordError").innerHTML = "Please enter a password.";
                isValid = false;
            } else if (password.length < 4) {
                document.getElementById("passwordError").innerHTML = "Password must be at least 4 characters long.";
                isValid = false;
            }

            if (isValid) {
                document.getElementById("ajaxMessage").style.color = "green";
                document.getElementById("ajaxMessage").innerHTML = "Registration successful! Redirecting...";
                // Submit form directly to RegisterServlet
                regForm.submit();
            }
        });
    }
});
</script>

</body>
</html>