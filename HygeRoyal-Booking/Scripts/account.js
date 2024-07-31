const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');
const upName = document.getElementById('upname');
const upEmail = document.getElementById('upemail');
const upPassword = document.getElementById('uppassword');
const inEmail = document.getElementById('inemail');
const inPassword = document.getElementById('inpassword');
const btnSignIn = document.getElementById('btn_signin');
const btnSignUp = document.getElementById('btn_signup');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});

function SignUp() {
    validateInputUp();
}

function SignIn() {
    validateInputIn();
}


const setError = (element, message) => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = message;
    inputControl.classList.add('error');
    inputControl.classList.remove('success')
}

const setSuccess = element => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = '';
    inputControl.classList.add('success');
    inputControl.classList.remove('error');
};

const isValidEmail = email => {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

const validateInputUp = () => {

    if (upName.value.trim() === '') {
        setError(upName, 'Username is required');
    } else {
        setSuccess(upName);
    }

    if (upEmail.value.trim() === '') {
        setError(upEmail, 'Email is required');
    } else if (!isValidEmail(upEmail.value.trim())) {
        setError(upEmail, 'Provide a valid email address');
    } else {
        setSuccess(upEmail);
    }

    if (upPassword.value.trim() === '') {
        setError(upPassword, 'Password is required');
    } else if (upPassword.value.trim().length < 8 || upPassword.value.trim().length > 16) {
        setError(upPassword, 'Password must be 8-16 characters.')
    } else {
        setSuccess(upPassword);
    }

    if (upName.value != '' && upEmail.value != '' && isValidEmail(upEmail.value) && upPassword.value != '' && upPassword.value.trim().length >= 8 && upPassword.value.trim().length <= 16) {
        $.ajax({
            type: "POST",
            url: "SignIn_SignUp.aspx/SignUp",
            data: JSON.stringify({
                username: upName.value,
                password: upPassword.value,
                email: upEmail.value
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                alert(response.d);
            },
            error: function (error) {
                alert('An error occurred:' + error.responseText);
            }
        });
    }
};

const validateInputIn = () => {

    if (inEmail.value.trim() === '') {
        setError(inEmail, 'Email is required');
    } else if (!isValidEmail(inEmail.value.trim())) {
        setError(inEmail, 'Provide a valid email address');
    } else {
        setSuccess(inEmail);
    }

    if (inPassword.value.trim() === '') {
        setError(inPassword, 'Password is required');
    } else if (inPassword.value.trim().length < 8 || inPassword.value.trim().length > 16) {
        setError(inPassword, 'Password must be 8-16 characters.')
    } else {
        setSuccess(inPassword);
    }

    if (inEmail.value != '' && isValidEmail(inEmail.value) && inPassword.value != '' && inPassword.value.trim().length >= 8 && inPassword.value.trim().length <= 16) {
        $.ajax({
            type: "POST",
            url: "SignIn_SignUp.aspx/SignIn",
            data: JSON.stringify({
                email: inEmail.value,
                password: inPassword.value,
                isSignIn: true
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                if (response.d === "Success") {
                    window.location.href = 'Home.aspx';
                }
                else {
                    alert(response.d);
                }
            },
            error: function (error) {
                alert('An error occurred:' + error.responseText);
            }
        });
    }
};