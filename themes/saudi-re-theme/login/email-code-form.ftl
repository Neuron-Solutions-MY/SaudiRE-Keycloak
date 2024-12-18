<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/email-code-form.css">

</head>

<body>

    <div class="container">
        <div class="logo-container">
            <div class='mail-icon'>
                <img src="${url.resourcesPath}/img/MailOutlined.png" alt="MailOutlined">
            </div>
        </div>
        <h2>Please check your Mail.</h2>
        <p>We've sent a code to your email.</p>

        <form id="kc-otp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post"
            onsubmit="concatenateOTP(event)>
            <div class="code-inputs">
            <input id="input1" type="text" maxlength="1" oninput="moveFocus(this, 'input2')" />
            <input id="input2" type="text" maxlength="1" oninput="moveFocus(this, 'input3')" />
            <input id="input3" type="text" maxlength="1" oninput="moveFocus(this, 'input4')" />
            <input id="input4" type="text" maxlength="1" oninput="moveFocus(this, 'input5')" />
            <input id="input5" type="text" maxlength="1" oninput="moveFocus(this, 'input6')" />
            <input id="input6" type="text" maxlength="1" oninput="moveFocus(this, 'kc-form-buttons')" />
            <!-- Hidden field to store the concatenated OTP -->
            <input type="hidden" id="fullOtp" name="emailCode" value="" />
             <p>Didn't get a code? 
            <a href="javascript:void(0);" onclick="resendCode()">Click to resend.</a>
        </p>

            <#-- Error Message Display -->
            <#if messagesPerField.existsError('emailCode')>
                <span id="input-error-otp-code" class="error-message">
                    ${kcSanitize(messagesPerField.get('emailCode'))?no_esc}
                </span>
            </#if>


            <div id="kc-form-buttons">
                <div class="${properties.kcFormButtonsWrapperClass!} form-actions">
                    <input
                        class="${properties.kcButtonClass!} cancel-btn ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}"
                        name="cancel" type="submit" value="${msg("doCancel")}" />
                    <input
                        class="${properties.kcButtonClass!} confirm-btn ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                        name="login" type="submit" value="${msg("doLogIn")}" />
                </div>
            </div>
        </form>
    </div>

        <script>
            // Move focus to the next input field after one character is entered
            function moveFocus(currentInput, nextInputId) {
                getConcatenatedOTP();
                console.log("nextInputId", currentInput)
                if (currentInput.value.length === 1) {
                    const nextInput = document.getElementById(nextInputId);
                    if (nextInput) {
                        nextInput.focus();
                    }
                }
            }

            function getConcatenatedOTP() {
                let otp = '';
                for (let i = 1; i <= 6; i++) {
                    otp += document.getElementById('input' + i).value;
                }

                // Update the hidden input with the concatenated OTP
                document.getElementById('fullOtp').value = otp;
            }

             function resendCode() {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = "${url.loginAction}"; // Your login action URL

            var emailCodeField = document.createElement('input');
            emailCodeField.type = 'hidden';
            emailCodeField.name = 'emailCode';
            emailCodeField.value = ''; // Optionally add current email code if necessary

            var resendField = document.createElement('input');
            resendField.type = 'hidden';
            resendField.name = 'resend';
            resendField.value = 'Resend Code'; // Action to resend code

            form.appendChild(emailCodeField);
            form.appendChild(resendField);
            document.body.appendChild(form);
            form.submit();
        }



        </script>

</body>

</html>