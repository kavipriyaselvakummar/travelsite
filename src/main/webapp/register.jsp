<!DOCTYPE html>

<html>

<head>

    <title>TravelSite - Registration</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

<header>

    <a href="index.jsp" class="logo">
        ✈ TravelSite
    </a>

    <nav>

        <a href="index.jsp">
            Home
        </a>

        <a href="destination.jsp">
            Destinations
        </a>

        <a href="feedback.jsp">
            Feedback
        </a>

    </nav>

</header>


<section>

    <h2>TravelSite Registration</h2>


    <form id="registerForm"
          action="register"
          method="post">


        <!-- NAME -->

        <label>Name</label>

        <input type="text"
               id="name"
               name="name">

        <span id="nameError"
              style="color:red;">
        </span>


        <br><br>


        <!-- EMAIL -->

        <label>Email</label>

        <input type="email"
               id="email"
               name="email">

        <span id="emailError"
              style="color:red;">
        </span>


        <br><br>


        <!-- PASSWORD -->

        <label>Password</label>

        <input type="password"
               id="password"
               name="password">

        <span id="passwordError"
              style="color:red;">
        </span>


        <br><br>


        <button type="submit">
            Register
        </button>

    </form>


    <p id="ajaxMessage"
       style="color:green;">
    </p>


</section>


<script>

document.getElementById("registerForm")
.addEventListener("submit", function(event) {

    // Stop normal form submission
    event.preventDefault();


    // Get values

    let name =
        document.getElementById("name").value.trim();

    let email =
        document.getElementById("email").value.trim();

    let password =
        document.getElementById("password").value;


    // Clear previous errors

    document.getElementById("nameError").innerHTML = "";

    document.getElementById("emailError").innerHTML = "";

    document.getElementById("passwordError").innerHTML = "";

    document.getElementById("ajaxMessage").innerHTML = "";


    // Create AJAX request

    let xhr = new XMLHttpRequest();


    // PHP URL

    let url =
        "http://localhost/travelsite-php/validate.php"
        + "?name=" + encodeURIComponent(name)
        + "&email=" + encodeURIComponent(email)
        + "&password=" + encodeURIComponent(password);


    xhr.open("GET", url, true);


    xhr.onreadystatechange = function() {

        if (xhr.readyState === 4) {

            if (xhr.status === 200) {

                try {

                    let result =
                        JSON.parse(xhr.responseText);


                    // PHP validation successful

                    if (result.success) {

                        document.getElementById(
                            "ajaxMessage"
                        ).innerHTML =
                            result.message;


                        /*
                         * PHP validation is successful.
                         *
                         * Now submit the same form
                         * to RegisterServlet.
                         */

                        document.getElementById(
                            "registerForm"
                        ).submit();

                    }


                    // PHP validation failed

                    else {

                        if (result.errors.name) {

                            document.getElementById(
                                "nameError"
                            ).innerHTML =
                                result.errors.name;

                        }


                        if (result.errors.email) {

                            document.getElementById(
                                "emailError"
                            ).innerHTML =
                                result.errors.email;

                        }


                        if (result.errors.password) {

                            document.getElementById(
                                "passwordError"
                            ).innerHTML =
                                result.errors.password;

                        }

                    }

                }

                catch (error) {

                    document.getElementById(
                        "ajaxMessage"
                    ).innerHTML =
                        "Invalid response from PHP.";

                }

            }

            else {

                document.getElementById(
                    "ajaxMessage"
                ).innerHTML =
                    "Unable to connect to PHP.";

            }

        }

    };


    xhr.send();

});

</script>


</body>

</html>