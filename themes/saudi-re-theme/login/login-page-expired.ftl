<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f7f0;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .email-container {
            max-width: 600px;
            margin: 20px auto;
            border: 1px solid #d1d5d1;
            border-radius: 8px;
            overflow: hidden;
            background-color: #ffffff;
        }
        .header {
            background-color: #6da06d;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .header img {
            max-width: 120px;  /* Reduced the logo size */
            margin-bottom: 10px;
        }
        .header h1 {
            margin: 10px 0;
            font-size: 22px;  /* Slightly smaller title */
        }
        .body {
            padding: 20px;
        }
        .message {
            font-size: 16px;
            color: #4a804a;
            margin: 20px 0;
        }
        .action-btn {
            display: inline-block;
            background-color: #6da06d;
            color: white;
            font-size: 16px;
            font-weight: bold;
            padding: 12px 25px;
            margin: 10px 0;
            text-decoration: none;
            border-radius: 4px;
            text-align: center;
        }
        .footer {
            background-color: #f5f5f5;
            color: #888;
            text-align: center;
            padding: 10px;
            font-size: 12px;
        }
        .footer p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="header">
            <img src="${url.resourcesPath}/img/Esnad-logo.png" alt="Esnad Logo">
            <h1>Session Expired</h1>
        </div>
        <div class="body">
            <p class="message">Your session has expired.</p>
            <p class="message">To restart the login process, click the button below:</p>
            <a id="loginRestartLink" href="${url.loginRestartFlowUrl}" class="action-btn">Restart Login</a>
            <p class="message">To continue where you left off, click the button below:</p>
            <a id="loginContinueLink" href="${url.loginAction}" class="action-btn">Continue Login</a>
        </div>
        <div class="footer">
            <p>© 2024 Saudi Re. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
