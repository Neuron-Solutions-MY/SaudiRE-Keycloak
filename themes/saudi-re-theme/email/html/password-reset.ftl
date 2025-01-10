<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f7f0;
            margin: 0;
            padding: 0;
        }
        .email-container {
            max-width: 600px;
            margin: 20px auto;
            border: 1px solid #d1d5d1;
            border-radius: 8px;
            overflow: hidden;
        }
        .header {
            background-color: #6da06d;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .header img {
            max-width: 150px;
            margin-bottom: 10px;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .body {
            background-color: #ffffff;
            padding: 20px;
        }
        .reset-link {
            display: inline-block;
            background-color: white; /* Darker green */
            color: black;
            font-size: 18px;
            font-weight: bold;
            padding: 12px 25px;
            margin: 20px 0;
            border-radius: 30px; /* Rounded corners */
            text-decoration: none;
            text-align: center;
            width: auto;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .reset-link:hover {
            background-color: #4a804a; /* Darker green on hover */
            transform: scale(1.05); /* Slight zoom effect */
            color: white
        }
        .footer {
            background-color: #f5f5f5;
            color: #888;
            text-align: center;
            padding: 10px;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <div class="email-container">
        <div class="header">
            <!--<img src="http://34.166.20.57/assets/images/Esnad-logo.png" alt="Esnad Logo" />-->
            <h1>Password Reset Request</h1>
        </div>
        <div class="body">
            <p>Dear ${user.email},</p>
            <p>We received a request to reset your password. Click the link below to set a new password:</p>
            <a href="${link}" class="reset-link">Reset your password</a>
            <p>This link will expire in ${linkExpiration} minutes.</p>
            <p>If you didn't request a password reset, please ignore this email.</p>
            <p>Thank you,</p>
            <p><strong>Saudi Re Team</strong></p>
        </div>
        <div class="footer">
            <p>© 2024 Saudi Re. All rights reserved.</p>
        </div>
    </div>

</body>
</html>
