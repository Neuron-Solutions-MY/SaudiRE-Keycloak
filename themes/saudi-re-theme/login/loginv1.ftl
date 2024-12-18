<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="${url.resourcesPath}/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!-- Login Form -->
        <div class="login-box">
            <!-- Logo -->
            <div class="logo">
                <img src="${url.resourcesPath}/images/logo.png" alt="Saudi Re Logo">
            </div>
            <!-- Form Title -->
            <h2>Log into your account</h2>
            <p>Welcome back! Please enter your details</p>
            <!-- Login Form -->
            <form action="${url.loginAction}" method="post">
                <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="username" placeholder="Enter your email" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="login-btn">Sign In</button>
            </form>
            <div class="extra-links">
                <a href="${url.forgotPasswordUrl}" class="forgot-password">Forgot Password?</a>
                <div class="signup-link">
                    <p>Don't have an account? <a href="${url.registrationUrl}">Sign up</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
