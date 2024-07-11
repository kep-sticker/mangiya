document.getElementById('masuk').addEventListener('click', function() {
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const emailError = document.getElementById('email-error');
    const passwordError = document.getElementById('password-error');

    emailError.textContent = '';
    passwordError.textContent = '';

    if (!validateEmail(email)) {
        emailError.textContent = 'Harap masukkan email sesuai format.';
        return;
    }

    if (!password) {
        passwordError.textContent = 'Harap masukkan password.';
        return;
    }

    google.script.run.withSuccessHandler(function(result) {
        if (result === 'EMAIL_NOT_FOUND') {
            emailError.textContent = 'Email belum terdaftar.';
        } else if (result === 'PASSWORD_INCORRECT') {
            passwordError.textContent = 'Password salah.';
        } else if (result === 'LOGIN_SUCCESS') {
            window.location.href = 'previous_page_url?email=' + encodeURIComponent(email) + '&password=' + encodeURIComponent(password);
        }
    }).withFailureHandler(function(error) {
        console.error('Error: ' + error.message);
    }).checkLogin(email, password);
});

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}
