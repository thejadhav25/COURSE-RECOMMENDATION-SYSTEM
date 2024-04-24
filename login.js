const showPasswordCheckbox = document.getElementById("showPassword");
const passwordField = document.getElementById("password");

showPasswordCheckbox.addEventListener("change", function () {
    if (showPasswordCheckbox.checked) {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }
});