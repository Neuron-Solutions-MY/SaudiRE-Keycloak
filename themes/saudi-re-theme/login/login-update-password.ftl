<!DOCTYPE html>
<html>
<head>
    <title>Update Password</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/update-password.css">
</head>
<body>
    <div class="update-password-container">
        <div class="container">
        <div class="header">
            <img src="${url.resourcesPath}/img/saudi-re-logo.png" alt="Logo" class="logo">
            <h1>Update Your Password</h1>
        </div>
        <div class="form-container">
            <form action="${url.loginAction}" method="post">
                <label for="password-new">New Password:</label>
                <input type="password" id="password-new" name="password-new" required>
                
                <label for="password-confirm">Confirm Password:</label>
                <input type="password" id="password-confirm" name="password-confirm" required>
                
                <button type="submit" class="btn">Update Password</button>
            </form>
        </div>  
    </div>
    </div>
</body>
</html>
