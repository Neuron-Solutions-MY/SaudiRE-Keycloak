<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Verification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            width: 100%;
            margin: 50px auto;
            background-color: #9dbca7;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo {
            width: 120px;
            margin-bottom: 10px;
        }
        h1 {
            font-size: 1.5em;
            color: white;
            margin: 0;
        }
        .content {
            margin-top: 20px;
            color: white;
            font-size: 1em;
        }
        .btn {
            display: block;
            width: 100%;
            background-color: #fff;
            color: black;
            padding: 10px 15px;
            border-radius: 4px;
            text-align: center;
            font-weight: 700;
            text-decoration: none;
            margin-top: 20px;
        }
          .footer {
            background-color: #f5f5f5;
            color: #888;
            text-align: center;
            padding: 10px;
            font-size: 12px;
        }
        @media screen and (max-width: 768px) {
            .container {
                margin: 20px auto;
                padding: 15px;
            }
            .logo {
                width: 100px;
            }
            h1 {
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <!--<img src="http://34.166.20.57/assets/images/logo-menu.svg" alt="Logo" class="logo">-->
            <h1>Account Verification</h1>
        </div>

        <div class="content">
            <p>Dear ${user.email},</p>
            <p>Thank you for registering with us! Please verify your account by clicking the button below:</p>
            <a href="${link}" class="btn">Verify Account</a>
        </div>

        <footer>
            <p>If you did not sign up for this account, you can ignore this email.</p>
        </footer>
    </div>

</body>
</html>
