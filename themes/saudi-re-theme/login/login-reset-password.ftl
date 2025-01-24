<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/reset-password.css">
    <style>
    .forgot-password-container {
        background-image: url('${url.resourcesPath}/img/background.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
</style>
</head>
<body>
    <div class="forgot-password-container">
        <div class="forgot-password-content">
            <#if messages?has_content>
                <#if messages.info?has_content>
                    <!-- Success Message -->
                    <div class="success-message">
                        <p>${messages.info}</p>
                        <p><a href="${url.loginUrl}">Go to Login</a></p>
                    </div>
                <#elseif messages.error?has_content>
                    <!-- Error Message -->
                    <div class="error-message">
                        <p>${messages.error}</p>
                    </div>
                </#if>
            <#else>
                 <div class="logo-container">
            <!--<img src="${url.resourcesPath}/img/Esnad-logo.png" alt="Saudi Re Logo" />-->
        </div>
                <!-- Reset Password Form -->
                <h2>Reset Your Password</h2>
                <p class="font-color">Please enter your email address to receive a password reset link.</p>
                <form id="kc-reset-password-form" action="${url.loginAction}" method="post" class="forgot-password-form">
                    <div class="input-group">
                        <label for="username" class="font-color">
                            <#if !realm.loginWithEmailAllowed>
                                ${msg("username")}
                            <#elseif !realm.registrationEmailAsUsername>
                                ${msg("usernameOrEmail")}
                            <#else>
                                ${msg("email")}
                            </#if>
                        </label>
                        <input 
                            type="email" 
                            id="username" 
                            name="username" 
                            class="form-control"
                            placeholder="Enter your email" 
                            value="${auth.attemptedUsername!''}" 
                            required 
                            aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />
                        <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="error-message">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>
                    </div>
                    <button type="submit" class="submit-btn">Send Reset Link</button>
                </form>
                <p class="font-color">Remember your password? <a class="font-color" href="${url.loginUrl}">Login</a></p>
            </#if>
        </div>
    </div>
</body>
</html>
