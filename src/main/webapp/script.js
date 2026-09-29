// =============================
// Image Slider for Destinations
// =============================

const images = document.querySelector(".places");

if (images) {
    let index = 0;
    const totalImages = document.querySelectorAll(".places img").length;

    if (totalImages > 0) {
        setInterval(function () {
            index++;
            if (index >= totalImages) {
                index = 0;
            }
            images.style.transform = "translateX(-" + (index * 100) + "%)";
            images.style.transition = "transform 0.8s ease-in-out";
        }, 3000);
    }
}

// =============================
// Welcome using Cookie
// =============================

function welcomeUser() {
    let cookies = document.cookie.split("; ");

    for (let cookie of cookies) {
        let data = cookie.split("=");
        if (data[0] === "username" && data[1]) {
            let welcome = document.getElementById("welcome");
            if (welcome) {
                welcome.innerHTML = "👋 Welcome Back, " + decodeURIComponent(data[1]) + "!";
            }
        }
    }
}

welcomeUser();

// =============================
// Digital Clock & Greetings
// =============================

function updateClock() {
    let greeting = document.getElementById("greetings");
    let clock = document.getElementById("clock");

    if (!greeting && !clock) return;

    let now = new Date();
    let hour = now.getHours();

    if (greeting) {
        if (hour < 12) {
            greeting.innerHTML = "🌞 Good Morning Traveller!";
        } else if (hour < 17) {
            greeting.innerHTML = "☀️ Good Afternoon Traveller!";
        } else if (hour < 21) {
            greeting.innerHTML = "🌆 Good Evening Traveller!";
        } else {
            greeting.innerHTML = "🌙 Good Night Traveller!";
        }
    }

    if (clock) {
        clock.innerHTML = now.toLocaleTimeString();
    }
}

updateClock();
setInterval(updateClock, 1000);

// =============================
// Random Offer Banner
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
        offer.style.background = "#e2e8f0";
        offer.style.color = "#0f172a";
    });

    offer.addEventListener("mouseout", function () {
        offer.style.background = "linear-gradient(135deg, #0284c7, #0369a1)";
        offer.style.color = "#ffffff";
    });
}

// =============================
// Welcome Prompt for Home Page
// =============================

let welcome = document.getElementById("welcome");

if (welcome && welcome.innerHTML.trim() === "Welcome to TravelSite") {
    let traveller = prompt("Enter your name");
    if (traveller != null && traveller.trim() !== "") {
        welcome.innerHTML = "👋 Welcome, " + traveller.trim() + "!";
        document.cookie = "username=" + encodeURIComponent(traveller.trim()) + ";max-age=86400;path=/";
    }
}

// =============================
// Feedback Search Form Handler
// =============================

const feedbackForm = document.getElementById("feedbackSearchForm");

if (feedbackForm) {
    feedbackForm.addEventListener("submit", function(event) {
        const rating = document.getElementById("rating").value;
        if (!rating) {
            event.preventDefault();
            alert("Please enter or select a rating.");
        }
    });
}