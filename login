<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register User & Redirect</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<h2>Register User</h2>
<form id="registerForm">
    <input type="text" id="name" placeholder="Name" required><br><br>
    <input type="email" id="email" placeholder="Email" required><br><br>
    <button type="submit">Register</button>
</form>

<script>
    const API_URL = "https://your-api-url.com"; // Replace with your actual backend URL

    $("#registerForm").submit(function(e) {
        e.preventDefault();
        let name = $("#name").val().trim();
        let email = $("#email").val().trim();

        if (name && email) {
            $.ajax({
                url: `${API_URL}/register`, 
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify({ name, email }),
                success: function(response) {
                    alert("User registered successfully!");
                    window.location.href = "login.html";
                },
                error: function() {
                    alert("Error registering user!");
                }
            });
        }
    });
</script>

</body>
</html>
