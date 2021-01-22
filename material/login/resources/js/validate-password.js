function validate(input) {
    let regex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
    return regex.test(input);
}

function showValidationIssue(errorMessage) {
    document.getElementById('validation-error-message-text').innerText = errorMessage;
    document.getElementById('validation-error-message').style.display = "block";
    document.getElementById('submit-register-btn').disabled = true;
}

function hideValidationIssues() {
    document.getElementById('validation-error-message-text').innerText = "";
    document.getElementById('validation-error-message').style.display = "none";
    document.getElementById('submit-register-btn').disabled = false;
}

function validateForm() {
    let password = document.getElementById('password');
    let passwordConfirm = document.getElementById('password-confirm');
    
    if (password === passwordConfirm) {
        if (validate(password)) {
            hideValidationIssues();
        } else {
            showValidationIssue("Password does not meet complexity requirements.");
        }
    } else {
        showValidationIssue("Passwords do not match.");
    }
}

function debounce(func, wait = 100) {
    let timeout;
    return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(() => {
        func.apply(this, args);
        }, wait);
    };
}

const debouncedInputValidator = debounce(validateForm, 500);

document.addEventListener('DOMContentLoaded', function () {
    let passwordInput = document.getElementById('password');
    let passwordConfirmInput = document.getElementById('password-confirm');
    if (!passwordConfirmInput) {
        return;
    }

    passwordInput.addEventListener('input', debouncedInputValidator);
    passwordConfirmInput.addEventListener('input', debouncedInputValidator);
});