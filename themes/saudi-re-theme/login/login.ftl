<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
</head>
<body>
    <div class="container">
        <!-- Left Section -->
        <div class="login-section">
            <!--<div class="logo">
                 <img src="${url.resourcesPath}/img/Esnad-logo.png" alt="Esnad Logo">
            </div>-->
            <h1>Log into your account</h1>
            <p class="welcome-text">Welcome back! Please enter your details</p>
            <#import "template.ftl" as layout>
                <@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section >
                </@layout.registrationLayout>
            <#if messagesPerField.existsError('username','password')>
                        <span id="input-error" class="error-container" aria-live="polite">
                            ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                        </span>
                    </#if>
            <form action="${url.loginAction}" method="post">
                <div class="form-group">
                    <label for="username">
                                <#if !realm.loginWithEmailAllowed>
                                    ${msg("username")}
                                <#elseif !realm.registrationEmailAsUsername>
                                    ${msg("usernameOrEmail")}
                                <#else>
                                    ${msg("email")}
                                </#if>
                            </label>
                    <input 
                        tabindex="2"
                        autocomplete="username"
                        value="${(login.username!'')}"
                        type="email" autofocus  
                        id="email" 
                        name="username" 
                        placeholder="Enter your Email"
                        aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" 
                        dir="ltr"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter Password" required>
                </div>

                <div class="forgot-password">
                    <a href="${url.loginResetCredentialsUrl}" class="forgot-password">Forgot Password</a>
                </div>

                <button type="submit" class="sign-in-btn">Sign in</button>
                <!-- <p class="signup-text">Don't have an account? <a href="${url.registrationUrl}">Sign up</a></p> -->
            </form>
        </div>

        <!-- Right Section -->
        <div class="image-section">
            <img src="${url.resourcesPath}/img/background.png" alt="Decorative Background">
        </div>
    </div>
</body>
</html>
