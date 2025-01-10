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
        .otp {
            display: inline-block;
            background-color: #e6f5e6;
            color: #4a804a;
            font-size: 20px;
            font-weight: bold;
            padding: 10px 20px;
            margin: 20px 0;
            border-radius: 4px;
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
            <img src="${url.resourcesPath}/img/Esnad-logo.png" alt="Esnad Logo" />
        </div>
        <div class="body">
            <p>Dear ${user.email},</p>
            <p>We received a request to verify your account.</p>
            <p>Your One-Time Password (OTP) is:</p>
            <div class="otp">${msg(code, ttl)}</div>
            <p>Please use this OTP to complete your verification</p>
            <p>If you did not request this, please ignore this email or contact our support team immediately.</p>
            <p>Thank you,</p>
            <p><strong>Saudi Re Team</strong></p>
        </div>
        <div class="footer">
            <p>© 2024 Saudi Re. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
