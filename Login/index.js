document.getElementById('masuk').addEventListener('click', function() {
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const emailError = document.getElementById('email-error');
    const passwordError = document.getElementById('password-error');

    emailError.textContent = '';
    passwordError.textContent = '';

    let loginAttempts = 0;

    if (!validateEmail(email)) {
        emailError.textContent = 'Harap masukkan email sesuai format.';
        return;
    }

    if (!password) {
        passwordError.textContent = 'Harap masukkan password.';
        return;
    }

    const result = checkLogin(email, password);

    if (result === 'TRUE') {
        window.location.href = 'previous_page_url?email=' + encodeURIComponent(email) + '&password=' + encodeURIComponent(password);
    } else if (result === 'FALSE') {
        loginAttempts++;
        if (loginAttempts > 2) {
            passwordError.textContent = 'Password anda salah. Tekan lupa password untuk mereset.';
        } else {
            passwordError.textContent = 'Password salah.';
        }
    }
});

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}

function checkLogin(username, password) {
  const url = 'https://docs.google.com/spreadsheets/d/146N-_LECl6JQIVboO1sTeU2wYJYQqwoRsD1oH8jUhf8/';
  const ss = SpreadsheetApp.openByUrl(url);
  const webAppSheet = ss.getSheetByName("DATA");
  const getLastRow = webAppSheet.getLastRow();
  
  for (let i = 1; i <= getLastRow; i++) {
    const storedUsername = webAppSheet.getRange(i, 1).getValue().toUpperCase();
    const storedPassword = webAppSheet.getRange(i, 2).getValue().toUpperCase();
    
    if (storedUsername === username.toUpperCase() && storedPassword === password.toUpperCase()) {
      return 'TRUE';
    }
  }
  
  return 'FALSE';
}
