// =============================
// Image Slider
// =============================

const images = document.querySelector(".places");

if (images) {

    let index = 0;

    const totalImages = document.querySelectorAll(".places img").length;

    setInterval(function () {

        index++;

        if (index >= totalImages) {
            index = 0;
        }

        images.style.transform = "translateX(-" + (index * 800) + "px)";
        images.style.transition = "0.8s ease";

    }, 3000);
}

// =============================
// Welcome using Cookie
// =============================

function welcomeUser() {

    let cookies = document.cookie.split("; ");

    for (let cookie of cookies) {

        let data = cookie.split("=");

        if (data[0] === "username") {

            let welcome = document.getElementById("welcome");

            if (welcome) {

                welcome.innerHTML =
                    "👋 Welcome Back, " + data[1] + "!";

            }
        }
    }
}

welcomeUser();

// =============================
// Digital Clock
// =============================

function updateClock() {

    let greeting = document.getElementById("greetings");
    let clock = document.getElementById("clock");

    if (!greeting || !clock)
        return;

    let now = new Date();

    let hour = now.getHours();

    if (hour < 12) {

        greeting.innerHTML = "🌞 Good Morning Traveller!";

    }
    else if (hour < 17) {

        greeting.innerHTML = "☀️ Good Afternoon Traveller!";

    }
    else if (hour < 21) {

        greeting.innerHTML = "🌆 Good Evening Traveller!";

    }
    else {

        greeting.innerHTML = "🌙 Good Night Traveller!";

    }

    clock.innerHTML = now.toLocaleTimeString();

}

updateClock();

setInterval(updateClock, 1000);

// =============================
// Random Offer
// =============================

const offer = document.getElementById("offer");

if (offer) {

    const offers = [

        "20% OFF on Bali Package",

        "15% OFF on Paris Tour",

        "10% OFF on Manali Trip",

        "Buy 1 Get 1 Free on Kerala Tour",

        "Free Hotel Stay for Nepal Package"

    ];

    let randomOffer = offers[Math.floor(Math.random() * offers.length)];

    offer.innerHTML = "<h3>" + randomOffer + "</h3>";

    offer.addEventListener("mouseover", function () {

        offer.style.background = "#e9fd76";
        offer.style.color = "black";

    });

    offer.addEventListener("mouseout", function () {

        offer.style.background =
            "linear-gradient(135deg,#00b4d8,#0077b6)";

        offer.style.color = "white";

    });

}

// =============================
// Welcome Prompt
// =============================

let welcome = document.getElementById("welcome");

if (welcome && welcome.innerHTML === "Welcome to TravelSite") {

    let traveller = prompt("Enter your name");

    if (traveller != null && traveller != "") {

        welcome.innerHTML =
            "👋 Welcome, " + traveller + "!";

        document.cookie =
            "username=" + traveller + ";max-age=86400";

    }
}

document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("registrationForm");

    if (!form) {
        return;
    }

    form.addEventListener("submit", function (event) {

        event.preventDefault();

        // Clear previous messages
        document.getElementById("nameError").innerHTML = "";
        document.getElementById("emailError").innerHTML = "";
        document.getElementById("ageError").innerHTML = "";

        document.getElementById("successMessage").innerHTML = "";

        const name =
            document.getElementById("name").value;

        const email =
            document.getElementById("email").value;

        const age =
            document.getElementById("age").value;


        // Create form data
        const formData = new FormData();

        formData.append("name", name);
        formData.append("email", email);
        formData.append("age", age);


        // AJAX request to PHP
        fetch("http://localhost/travelsite-php/validate.php", {

            method: "POST",

            body: formData

        })

        .then(response => response.json())

        .then(data => {

            if (data.success) {

                document.getElementById("successMessage")
                    .innerHTML =
                    data.message;

                document.getElementById("successMessage")
                    .style.color = "green";


                // Now submit the form to Servlet
                form.submit();

            }

            else {

                if (data.errors.name) {

                    document.getElementById("nameError")
                        .innerHTML =
                        data.errors.name;

                }


                if (data.errors.email) {

                    document.getElementById("emailError")
                        .innerHTML =
                        data.errors.email;

                }


                if (data.errors.age) {

                    document.getElementById("ageError")
                        .innerHTML =
                        data.errors.age;

                }

            }

        })

        .catch(error => {

            console.error(error);

            document.getElementById("successMessage")
                .innerHTML =
                "Unable to connect to PHP server.";

            document.getElementById("successMessage")
                .style.color = "red";

        });

    });

});
const feedbackForm =
    document.getElementById("feedbackSearchForm");

if (feedbackForm) {

    feedbackForm.addEventListener("submit", function(event) {

        event.preventDefault();

        const rating =
            document.getElementById("rating").value;

        fetch("feedbackSearch?rating=" + rating)

        .then(response => response.text())

        .then(data => {

            document.getElementById("searchResults")
                .innerHTML = data;

        })

        .catch(error => {

            document.getElementById("searchResults")
                .innerHTML =
                "<p>Error loading search results.</p>";

            console.error(error);

        });

    });

}

document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("registerForm");

    if (!form) {
        return;
    }

    form.addEventListener("submit", function (event) {

        event.preventDefault();

        // Clear previous messages
        document.getElementById("nameError").innerHTML = "";
        document.getElementById("emailError").innerHTML = "";
        document.getElementById("passwordError").innerHTML = "";

        document.getElementById("ajaxMessage").innerHTML = "";

        const name =
            document.getElementById("name").value;

        const email =
            document.getElementById("email").value;

        const password =
            document.getElementById("password").value;


        // Create data to send to PHP
        const data = new URLSearchParams();

        data.append("name", name);
        data.append("email", email);
        data.append("password", password);


        // AJAX request to PHP
        fetch("http://localhost/travelsite-php/validate.php", {

            method: "POST",

            headers: {
                "Content-Type":
                    "application/x-www-form-urlencoded"
            },

            body: data

        })

        .then(response => response.json())

        .then(result => {

            if (result.success) {

                document.getElementById("ajaxMessage").innerHTML =
                    "✓ " + result.message;

                document.getElementById("ajaxMessage").style.color =
                    "green";


                // PHP validation successful
                // Now submit to Java RegisterServlet

                form.submit();

            }

            else {

                if (result.errors.name) {

                    document.getElementById("nameError").innerHTML =
                        result.errors.name;

                }

                if (result.errors.email) {

                    document.getElementById("emailError").innerHTML =
                        result.errors.email;

                }

                if (result.errors.password) {

                    document.getElementById("passwordError").innerHTML =
                        result.errors.password;

                }

            }

        })

        .catch(error => {

            console.error(error);

            document.getElementById("ajaxMessage").innerHTML =
                "Unable to connect to PHP validation.";

            document.getElementById("ajaxMessage").style.color =
                "red";

        });

    });

});

document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("registerForm");

    if (!form) {
        return;
    }

    form.addEventListener("submit", function (event) {

        // Stop normal form submission
        event.preventDefault();


        const name =
            document.getElementById("name").value;

        const email =
            document.getElementById("email").value;

        const password =
            document.getElementById("password").value;


        // Clear old errors

        document.getElementById("nameError").innerHTML = "";

        document.getElementById("emailError").innerHTML = "";

        document.getElementById("passwordError").innerHTML = "";

        document.getElementById("ajaxMessage").innerHTML = "";


        // Create form data

        const formData = new FormData();

        formData.append("name", name);

        formData.append("email", email);

        formData.append("password", password);


        // AJAX request to PHP

        fetch("http://localhost/travelsite-php/validate.php", {

            method: "POST",

            body: formData

        })

        .then(response => response.json())

        .then(data => {

            if (data.success) {

                document.getElementById("ajaxMessage").innerHTML =
                    "<span style='color:green;'>"
                    + data.message
                    + "</span>";


                // PHP validation successful.
                // Now submit the form to RegisterServlet.

                form.submit();

            }
            else {

                // Display PHP validation errors

                if (data.errors.name) {

                    document.getElementById("nameError").innerHTML =
                        data.errors.name;

                }


                if (data.errors.email) {

                    document.getElementById("emailError").innerHTML =
                        data.errors.email;

                }


                if (data.errors.password) {

                    document.getElementById("passwordError").innerHTML =
                        data.errors.password;

                }

            }

        })

        .catch(error => {

            console.error(error);

            document.getElementById("ajaxMessage").innerHTML =
                "<span style='color:red;'>"
                + "Unable to connect to PHP validation server."
                + "</span>";

        });

    });

});