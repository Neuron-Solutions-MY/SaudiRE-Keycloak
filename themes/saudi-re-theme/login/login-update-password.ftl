<!DOCTYPE html>
<html>

<head>
    <title>Update Password</title>
    <style>
    .update-password-container {
        background-image: url('${url.resourcesPath}/img/background.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
</style>
    <link rel="stylesheet" href="${url.resourcesPath}/css/update-password.css">
</head>

<body>
    <div class="update-password-container">
        <div class="container">
            <div class="header">
                <!--<img src="${url.resourcesPath}/img/Esnad-logo.png" alt="Logo" class="logo">-->
                <h1>Update Your Password</h1>
            </div>
            <div class="form-container">
                <form action="${url.loginAction}" method="post">
                    <label for="password-new">New Password:</label>
                    <input type="password" id="password-new" name="password-new" required>
                    <div id="error-password" class="error-message">
                        <#if messagesPerField.existsError('password')>
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </#if>
                    </div>

                    <label for="password-confirm">Confirm Password:</label>
                    <input type="password" id="password-confirm" name="password-confirm" required>
                    <div id="error-password-confirm" class="error-message">
                        <#if messagesPerField.existsError('password-confirm')>
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </#if>
                    </div>

                    <button type="submit" class="btn">Update Password</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>